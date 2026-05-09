extends Node2D

func _ready() -> void:
	Globals.reset_current_points()
	Globals.required_points = 1

func _on_change_level_change_level() -> void:
	LevelTransition.change_level("res://scenes/levels/Level3/level_3.tscn")
