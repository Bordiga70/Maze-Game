extends Control

const MENU_PATH: NodePath = ^"res://scenes/GUI/MainMenu/main_menu.tscn"

func _ready() -> void:
	$".".button_down.connect(_on_menu_pressed)

func _on_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file(MENU_PATH)
