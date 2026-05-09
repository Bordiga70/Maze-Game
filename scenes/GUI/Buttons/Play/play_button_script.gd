extends Control

func _ready() -> void:
	$".".button_down.connect(_on_play_pressed)

func _on_play_pressed() -> void:
	LevelTransition.change_level("res://scenes/levels/Level1/level_1.tscn")
