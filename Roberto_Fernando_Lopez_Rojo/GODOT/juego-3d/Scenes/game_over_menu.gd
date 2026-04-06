extends Control

func _ready():
	# Asegurarnos de que el mouse esté libre y visible para poder hacer clic
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_button_pressed():
	# 1. Reseteamos las variables globales para que la misión empiece de cero
	Global.mision_activa = false
	Global.tiene_queso = false
	Global.mision_completada = false
	
	# 2. Quitamos la pausa por si acaso quedó pegada
	get_tree().paused = false
	
	# 3. Recargamos tu nivel principal (¡CAMBIA ESTA RUTA POR LA DE TU NIVEL!)
	get_tree().change_scene_to_file("res://Levels/level_1.tscn")
