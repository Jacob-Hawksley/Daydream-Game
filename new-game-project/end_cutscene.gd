extends Area2D

var cutsceneing = false
func _on_body_entered(body: Node2D) -> void:
	Main.cutscene = true

func _process(delta: float) -> void:
	if Main.cutscene or Main.end:
		get_tree().paused = true
		if not cutsceneing:
			cutsceneing = true
			cutscene()
		
func cutscene():
	$Sacrifice.play()
	$You.play()
	await get_tree().create_timer(19).timeout
	Main.end = true
	Main.cutscene = false
