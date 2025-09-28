extends RigidBody2D
var savedpos = Vector2.ZERO
@onready var navagent = $NavigationAgent2D

func _ready() -> void:
	print('a')
func _process(delta: float) -> void:
	rotation = 0
	savedpos = get_node("../../Player").global_position + Vector2(100,10)
	move(savedpos)

func move(pos):
	await get_tree().create_timer(0.5).timeout
	position = pos
