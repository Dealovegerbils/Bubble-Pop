extends Area2D
class_name Bubble

var speed: float = 100 # pixels / seconds

func _ready() -> void:
	input_event.connect(on_clicked)

func _process(delta: float) -> void:
	position.y -= speed * delta 


func on_clicked(viewport, event, shape):
	if event is InputEventMouseButton: 
		if event.button_index == MOUSE_BUTTON_LEFT: 
			if event.pressed:
				pop()
func pop():
	queue_free() 
	
