extends Area2D

@onready var checkpoint_cords: Vector2 = global_position

func _on_body_entered(body):
	if body.name == "Player":
		body.change_spawn(checkpoint_cords)
