extends RigidBody2D
var grabbed = false
var player = null
func _process(delta: float) -> void:
	player = get_node("../Player")
	scale = Vector2(0.3,0.3)
	if player.position.x > (position.x - 10) or player.position.x < (position.x + 10):
		if Input.is_action_just_pressed("grabthrow"):
			if not grabbed:
				grabbed = true
			elif grabbed:
				grabbed = false
	if grabbed:
		rotation_degrees = 90
		$CollisionShape2D.disabled = true
		position = player.position + Vector2(0,-100)
	else:
		$CollisionShape2D.disabled = false
