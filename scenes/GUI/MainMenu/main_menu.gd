extends CanvasLayer

func _ready():
	_reset_status()

func _reset_status() -> void:
	Globals.reset_total_tries()
	Globals.reset_current_points()
	Globals.reset_current_scene()
