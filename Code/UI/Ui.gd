extends PanelContainer
class_name UI

@onready var score_ui: Label = $"Score UI"

var score: int = 0

func _ready() -> void:
	update_score(0) 

func update_score(delta_score):
	score += delta_score
	score_ui.text = str(score)
