extends RigidBody2D
var savedpos = Vector2.ZERO
var dead = false

@onready var navagent = $NavigationAgent2D

func _ready() -> void:
	pass
func _process(delta: float) -> void:

	scale.x = 0.3
	scale.y = 0.3
	if not dead:
		rotation = 0
		savedpos = get_node("../../Player").global_position + Vector2(100,10)
		move(savedpos)
	if Main.can_sacrifice and Input.is_action_just_pressed("sacrifice"):
		dead = true 
	if dead:
		rotation = 90
		position = Vector2(2230,360)
		$AnimatedSprite2D.play("ded")
		Main.has_sacrificed = true

func move(pos):
	await get_tree().create_timer(0.5).timeout
	position = pos
