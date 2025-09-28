extends Sprite2D
var has_blacked_out = false

func _process(delta: float) -> void:
	if not has_blacked_out and Main.has_sacrificed:
		has_blacked_out = true
		visible = true
		$AudioStreamPlayer2D.play()
		await get_tree().create_timer(2).timeout
		visible = false
