extends CanvasLayer

@onready var imagen = $TextureRect
@onready var sonido = $AudioStreamPlayer

func _ready():
	# Empezamos invisible
	hide()

# Esta función la llamaremos cuando Wega nos toque
func activar_susto():
	# 1. Liberar el mouse (por seguridad)
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	# 2. Mostramos la imagen y reproducimos el sonido
	show()
	
	
	# 3. Pausamos el resto del juego para que Wega no siga corriendo
	get_tree().paused = true 
	
	# ... (código anterior)
	# 4. Esperamos 2 segundos
	sonido.play()
	print("Jumpscare activo, esperando 2 segundos...")
	await get_tree().create_timer(2.0).timeout
	
	# 5. Quitamos la pausa y nos vamos a la pantalla de Game Over
	get_tree().paused = false
	# ¡CAMBIA ESTA RUTA POR LA DE TU ESCENA DE GAME OVER!
	get_tree().change_scene_to_file("res://Scenes/game_over_menu.tscn")
