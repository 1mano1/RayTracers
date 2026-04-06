extends CharacterBody3D

# Ajustes de Wega
@export var velocidad = 3.5 
# Ya no necesitamos "altura_flote" para el movimiento, 
# pero la dejaremos por si la usas para el spawn inicial.

var jugador = null
var activo = false

# Nodos requeridos
@onready var sonido_ambiente = $AudioStreamPlayer3D 

func _ready():
	# 1. Wega empieza invisible e inactivo
	visible = false
	activo = false
	process_mode = Node.PROCESS_MODE_DISABLED
	
	if sonido_ambiente:
		sonido_ambiente.stop()
	
	# 3. Buscamos al jugador en la escena (buscándolo por nombre exacto "Player")
	jugador = get_tree().current_scene.get_node_or_null("Player")
	
	# 4. Metemos a Wega en un grupo para llamarlo desde Rails
	add_to_group("enemigo_mision")

# Esta función la llamaremos desde Rails al aceptar la misión
func aparecer(punto_aparicion: Vector3):
	global_position = punto_aparicion
	visible = true
	activo = true
	process_mode = Node.PROCESS_MODE_INHERIT # Lo "despertamos"
	
	if sonido_ambiente:
		sonido_ambiente.play() # Empieza el sonido constante
	
	print("¡Wega ha aparecido en modo NOCLIP 3D!")

func desaparecer():
	visible = false
	activo = false
	process_mode = Node.PROCESS_MODE_DISABLED
	if sonido_ambiente:
		sonido_ambiente.stop()

func _physics_process(_delta):
	# Si no está activo o no encuentra al jugador, no hace nada
	if not activo or not jugador:
		return
	
	# --- LÓGICA DE PERSECUCIÓN FLOTANTE TOTAL (MODO FANTASMA) ---
	
	# 1. Calculamos la posición OBJETIVO (Apuntamos a la cabeza del jugador, no a los pies)
	var cabeza_jugador = jugador.get_node_or_null("Head")
	var posicion_objetivo = Vector3.ZERO
	
	if cabeza_jugador:
		posicion_objetivo = cabeza_jugador.global_position
	else:
		# Fallback por si no encuentra el nodo Head
		posicion_objetivo = jugador.global_position + Vector3(0, 1.7, 0)
	
	# 2. Calculamos la dirección 3D directa (incluyendo Y/Altura)
	var direccion = (posicion_objetivo - global_position).normalized()
	
	# 3. Mirar hacia el objetivo (todo el cuerpo rota en 3D para apuntar hacia ti)
	look_at(posicion_objetivo, Vector3.UP)
	
	# 4. Moverse directamente hacia él usando la dirección 3D completa
	velocity = direccion * velocidad
	
	# Usamos move_and_slide sin gravedad. 
	# Recuerda tener las capas de colisión apagadas en Wega para que atraviese paredes.
	move_and_slide()


func _on_kill_zone_area_body_entered(body: Node3D) -> void:
	# Verificamos si lo que tocó esta área es nuestro Player
	if body.name == "Player" or body.is_in_group("player"): 
		print("¡Wega ha tocado al jugador!")
		
		# Buscamos la interfaz del jumpscare en la escena principal
		var jumpscare_ui = get_tree().current_scene.get_node_or_null("JumpscareUI")
		
		if jumpscare_ui:
			# Escondemos a Wega para que la pantalla del jumpscare tome el control
			visible = false
			set_physics_process(false) # Detenemos su movimiento
			
			# ¡Activamos el grito y la imagen!
			jumpscare_ui.activar_susto()
			queue_free()
		else:
			print("ERROR: ¡Wega te atrapó, pero no encontró el nodo JumpscareUI para asustarte!")
