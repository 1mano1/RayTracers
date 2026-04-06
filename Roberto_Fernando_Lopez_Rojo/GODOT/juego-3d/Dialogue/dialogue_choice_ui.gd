extends Node

@onready var canvas = $Canvas
@onready var speaker = $Canvas/speaker_name
@onready var texto = $Canvas/dialogue_text
@onready var btn_continuar = $Canvas/continuar
@onready var btn_aceptar = $Canvas/boton_aceptar
@onready var btn_rechazar = $Canvas/Button 

var linea_actual = 0
var jugador_actual = null 

func _ready():
	canvas.visible = false 

func iniciar_dialogo(jugador):
	jugador_actual = jugador
	canvas.visible = true
	
	# ▼▼▼ REVISAMOS LA MEMORIA ANTES DE HABLAR ▼▼▼
	if Global.mision_completada:
		linea_actual = 10 # Ya terminaste todo
	elif Global.tiene_queso:
		linea_actual = 5 # Vienes a entregarle el queso
	elif Global.mision_activa:
		linea_actual = 6 # Hablas con él pero aún NO tienes el queso
	else:
		linea_actual = 0 # Inicio normal (Primera vez)
	# ▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲
	
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	jugador_actual.SPEED = 0.0
	jugador_actual.get_node("Head").sensitivity = 0.0
	
	var crosshair = jugador_actual.get_node_or_null("Control")
	var prompt_ui = jugador_actual.get_node_or_null("Head/InteractRay/Prompt")
	if crosshair: crosshair.visible = false
	if prompt_ui: prompt_ui.visible = false
	
	actualizar_ui()

func cerrar_dialogo():
	canvas.visible = false
	btn_continuar.text = "continuar" 
	
	if jugador_actual:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		jugador_actual.SPEED = 5.0
		jugador_actual.get_node("Head").sensitivity = 0.2
		
		var crosshair = jugador_actual.get_node_or_null("Control")
		var prompt_ui = jugador_actual.get_node_or_null("Head/InteractRay/Prompt")
		if crosshair: crosshair.visible = true
		if prompt_ui: prompt_ui.visible = true
		
		jugador_actual = null 

func actualizar_ui():
	# --- DIÁLOGOS NORMALES ---
	if linea_actual == 0:
		speaker.text = "Rails"
		texto.text = "Hola extraño me ayudas con una tarea? ocupo conseguir una comida que perdi cerca porfiss!!!!!"
		mostrar_solo_continuar()
	elif linea_actual == 1:
		speaker.text = "Prota"
		texto.text = "ocupo saber donde esta."
		mostrar_solo_continuar()
	elif linea_actual == 2:
		speaker.text = "Rails"
		texto.text = "Bueno esta atras tuyo mas lejitos pero cuidado cuando aceptes mi mision una imagen de luigi morado te perseguira."
		mostrar_opciones()
		
	# --- DIÁLOGO DE ACEPTAR ---
	elif linea_actual == 3:
		speaker.text = "Rails"
		texto.text = "Genial! eres el mejor!!! ok aqui te espero!!!"
		btn_continuar.text = "Cerrar" 
		mostrar_solo_continuar()
		
		# ▼▼▼ ACTIVAMOS LA MISIÓN Y APARECEMOS EL QUESO Y WEGA ▼▼▼
		if not Global.mision_activa:
			Global.mision_activa = true
			get_tree().call_group("comida_mision", "aparecer")
			
			# ¡AQUÍ ESTÁ LA MAGIA QUE FALTABA!
			print("Buscando punto de spawn de Wega...")
			var punto_spawn = get_tree().current_scene.get_node_or_null("WegaSpawnPoint")
			
			if punto_spawn:
				print("¡Punto encontrado! Despertando a Wega...")
				get_tree().call_group("enemigo_mision", "aparecer", punto_spawn.global_position)
			else:
				print("ERROR: No encontré el nodo WegaSpawnPoint en tu escena principal")
			
	# --- DIÁLOGO DE RECHAZAR ---
	elif linea_actual == 4:
		speaker.text = "Rails"
		texto.text = "Ay que pena pipipipipipi."
		btn_continuar.text = "Cerrar"
		mostrar_solo_continuar()
		
	# --- NUEVOS ESTADOS DE LA MISIÓN ---
	elif linea_actual == 5:
		speaker.text = "Rails"
		texto.text = "¡WOW! Encontraste mi queso. ¡Muchas gracias extraño!"
		Global.mision_completada = true # Marcamos la misión como 100% terminada
		
		# Opcional: Hacer desaparecer a Wega si entregas el queso antes de que te atrape
		get_tree().call_group("enemigo_mision", "desaparecer") 
		
		btn_continuar.text = "Cerrar"
		mostrar_solo_continuar()
	elif linea_actual == 6:
		speaker.text = "Rails"
		texto.text = "¡Aún no tienes mi comida! Búscala, está aquí atrasito no seas flojo."
		btn_continuar.text = "Cerrar"
		mostrar_solo_continuar()
	elif linea_actual == 10:
		speaker.text = "Rails"
		texto.text = "Gracias de nuevo por la comida, eres el mejor."
		btn_continuar.text = "Cerrar"
		mostrar_solo_continuar()

func mostrar_solo_continuar():
	btn_aceptar.hide()
	btn_rechazar.hide()
	btn_continuar.show()

func mostrar_opciones():
	btn_continuar.hide()
	btn_aceptar.show()
	btn_rechazar.show()

func _on_continuar_pressed():
	if linea_actual == 3 or linea_actual == 4 or linea_actual == 5 or linea_actual == 6 or linea_actual == 10:
		cerrar_dialogo()
	else:
		linea_actual += 1
		actualizar_ui()

func _on_boton_aceptar_pressed():
	linea_actual = 3
	actualizar_ui()

func _on_button_pressed():
	linea_actual = 4
	actualizar_ui()
