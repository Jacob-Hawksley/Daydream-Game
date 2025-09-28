extends Node

var friendtcsn: PackedScene = preload("res://friend.tscn")

func _ready() -> void:
	newfriend()

func newfriend():
	var friend = friendtcsn.instantiate()
	friend.scale = Vector2(0.3,0.3)
	add_child(friend)
