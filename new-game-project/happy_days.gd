extends AudioStreamPlayer2D

func _process(delta: float) -> void:
	if not playing and not Main.has_sacrificed:
		play()
	if Main.has_sacrificed:
		stop()
