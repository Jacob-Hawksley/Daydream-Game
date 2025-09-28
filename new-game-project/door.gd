extends Sprite2D

func _process(delta: float) -> void:
	if Main.has_sacrificed:
		queue_free()
