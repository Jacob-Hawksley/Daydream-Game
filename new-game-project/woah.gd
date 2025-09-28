extends AudioStreamPlayer2D

var has_said = false


func _process(delta: float) -> void:
	if not has_said and Main.can_sacrifice:
		has_said = true
		play()
	if Main.has_sacrificed:
		stop()
