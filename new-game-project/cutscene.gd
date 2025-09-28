extends AnimatedSprite2D


func _process(delta: float) -> void:
	if Main.end:
		play("end")
		$ded.visible = true
	elif Main.cutscene:
		play("blackout")
	else:
		play("new_animation")
		$ded.visible = false
