extends Node
var current_scene = null

var current_points: int
var required_points: int

var total_tries: int
func _ready():
	current_scene = "res://scenes/levels/Level1/level_1.tscn"

func set_required_points(value):
	required_points = value

func update_total_tries():
	total_tries += 1

func reset_current_scene():
	current_scene = "res://scenes/levels/Level1/level_1.tscn"

func reset_current_points():
	current_points = 0

func reset_required_points():
	required_points = 0

func reset_total_tries():
	total_tries = 0
	
func goto_scene(path):
	_deferred_goto_scene.call_deferred(path)

func _deferred_goto_scene(path):
	get_tree().current_scene.free()
	var s = ResourceLoader.load(path)
	current_scene = s.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
