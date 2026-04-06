extends Node3D

@onready var dialogue_ui = get_tree().current_scene.get_node("dialogue_ui/Canvas")
@onready var dialogue_animation: AnimationPlayer = get_tree().current_scene.get_node("dialogue_ui/Canvas/AnimationPlayer")
@onready var speaker_name: RichTextLabel = get_tree().current_scene.get_node("dialogue_ui/Canvas/Speaker_Name")
@onready var dialogue_text: RichTextLabel = get_tree().current_scene.get_node("dialogue_ui/Canvas/Dialogue_Text")
@onready var Player: CharacterBody3D = get_tree().current_scene.get_node("Player")

@export var dialogues: Array[String]
@export var speaker_names: Array[String]
@export var speaker: Node3D

var current_dialogue = -1
var started = false

func _ready() -> void:
	dialogue_ui.get_node("continuar").connect("pressed", Callable(self, "continue_dialogue"))

func start_dialogue(body):
	if body == Player and !started:
		started = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		Player.SPEED = 0.0
		Player.get_node("Head").sensitivity = 0.0
		dialogue_ui.visible = true
		speaker.look_at(Player.global_transform.origin)
		speaker.rotation_degrees.x = 0
		speaker.rotation_degrees.z = 0
		continue_dialogue()

func end_dialogue():
	Player.SPEED = 5.0
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Player.get_node("Head").sensitivity = 0.2
	dialogue_ui.visible = false
	

func continue_dialogue():
	current_dialogue += 1
	if current_dialogue < dialogues.size():
		dialogue_text.text = dialogues[current_dialogue]
		speaker_name.text = speaker_names[current_dialogue]
		dialogue_animation.play("RESET")
		dialogue_animation.play("Scroll")
	else:
		end_dialogue()
