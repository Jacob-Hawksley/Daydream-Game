extends Node

var friendtcsn: PackedScene = preload("res://friend.tscn")

func _ready() -> void:
	newfriend()

func newfriend():
	var friend = friendtcsn.instantiate()
	add_child(friend)
