extends Interactable

func _ready():
	# 1. Al inicio, el queso es invisible y no se puede interactuar
	visible = false
	process_mode = Node.PROCESS_MODE_DISABLED
	# 2. Lo metemos en un grupo para llamarlo desde otro script a la distancia
	add_to_group("comida_mision")

# Esta función la llamará Rails cuando aceptes la misión
func aparecer():
	visible = true
	process_mode = Node.PROCESS_MODE_INHERIT

func _on_interacted(_body):
	# 1. Reproduce el sonido de agarrar
	$AudioStreamPlayer3D.play()
	
	# 2. Le avisamos a la memoria global que ya tienes el queso
	Global.tiene_queso = true
	
	# 3. Lo ocultamos para que parezca que lo agarraste
	visible = false
	
	# 4. En lugar de process_mode, apagamos la colisión. 
	# (Usamos set_deferred para que el motor de físicas no lance un error)
	$CollisionShape3D.set_deferred("disabled", true)
	
	# 5. Esperamos automáticamente a que el audio termine de sonar
	await $AudioStreamPlayer3D.finished
	
	# 6. Ahora sí, lo borramos del juego
	queue_free()
