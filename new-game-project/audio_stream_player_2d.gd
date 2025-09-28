extends AudioStreamPlayer2D

func _process(delta: float) -> void:
	if not playing and Main.has_sacrificed:
		play()
