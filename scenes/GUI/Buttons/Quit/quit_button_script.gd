extends Control

func _ready():
	$".".button_down.connect(_on_quit_pressed)
	
func _on_quit_pressed() -> void:
	get_tree().quit()
