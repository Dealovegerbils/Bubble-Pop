extends Node2D
class_name Bubble

var speed: float = 100 # pixels / seconds

func _process(delta: float) -> void:
	position.y -= speed * delta 
	
