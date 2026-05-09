extends CanvasLayer

@onready var _tries_label = $Control/MarginContainer/VBoxContainer/tries_label

func _ready():
	_tries_label.text = "Total Deaths: " + str(Globals.total_tries)
