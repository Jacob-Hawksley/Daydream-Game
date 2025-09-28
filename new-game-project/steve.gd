extends CharacterBody2D
var grabbed = null
var player = null
var can_grab = false
var has_grabbed = false
var can_throw = false
func _process(delta: float) -> void:
	if Main.steve_alive:
		$AnimatedSprite2D.play("default")
	else:
		$AnimatedSprite2D.play("ded")
	player = get_node("../Player")
	scale = Vector2(0.3,0.3)
	
	if player.position.x > (position.x - 10) or player.position.x < (position.x + 10):
		if Input.is_action_just_pressed("grabthrow") and Main.steve_alive:
			if not grabbed and can_grab:
				grabbed = true
			elif grabbed:
				grabbed = false
				
	if grabbed:
		has_grabbed = true
		can_throw = true
		rotation_degrees = 90
		$CollisionShape2D.disabled = true
		position = player.position + Vector2(0,-100)
	elif has_grabbed and can_throw:
		$CollisionShape2D.disabled = false
		throw()
		can_throw = false


func _on_grab_body_entered(body: Node2D) -> void:
	can_grab = true


func _on_grab_body_exited(body: Node2D) -> void:
	can_grab = false

func throw():
	for i in range(50):
		position.x += 3
		await get_tree().create_timer(0.001).timeout
	for i in range(50):
		position.y += 3
		await get_tree().create_timer(0.001).timeout
