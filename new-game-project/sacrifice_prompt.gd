extends Area2D


func _on_body_entered(body: Node2D) -> void:
	Main.can_sacrifice = true
	$Sprite2D.visible = true
	await get_tree().create_timer(3).timeout
	$Sprite2D.visible = false
