extends Area2D


func _on_body_entered(body: Node2D) -> void:
	Main.steve_alive = false
	$AudioStreamPlayer2D.play()
