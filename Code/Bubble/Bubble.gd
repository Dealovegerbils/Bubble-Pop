extends Area2D
class_name Bubble

@export var main: Main = null
@export var speed: float = 100 # pixels / seconds

func _ready() -> void:
	main.audio_system.play()
	main.audio_system.pitch_scale = randf_range(0.67,2.0)
	input_event.connect(on_clicked)

func _process(delta: float) -> void:
	position.y -= speed * delta 
	if position.y <=0:
		pop()


func on_clicked(viewport, event, shape):
	if event is InputEventMouseButton: 
		if event.button_index == MOUSE_BUTTON_LEFT: 
			if event.pressed:
				pop()
func pop():
	main.ui.update_score(1)
	main.audio_system.position = position
	main.audio_system.play()
	main.audio_system.pitch_scale = randf_range(0.67,2.0)
	queue_free() 
	
