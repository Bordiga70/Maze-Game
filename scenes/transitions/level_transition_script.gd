extends CanvasLayer

func change_level(path: String) -> void:
	$AnimationPlayer.play("fade_to_black")
	await $AnimationPlayer.animation_finished
	Globals.goto_scene(path)
	$AnimationPlayer.play_backwards("fade_to_black")
