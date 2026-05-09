extends CanvasLayer

@onready var _points_label = $Control/MarginContainer/VBoxContainer/Label

func _process(_delta):
	_points_label.text = str(Globals.current_points) + "/" + str(Globals.required_points)
