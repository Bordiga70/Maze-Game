extends Control


func _ready():
	$".".button_down.connect(_on_resume_pressed)

func _on_resume_pressed() -> void:
	# the following line is beautiful and has nothing wrong
	get_parent().get_parent().get_parent().get_parent().hide()
	get_tree().paused = false
