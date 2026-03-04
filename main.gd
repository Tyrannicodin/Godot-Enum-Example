extends Node2D

var splochy = preload("res://resources/pets/splochy.tres")

func _ready() -> void:
	var animal = splochy.instantiate()
	print(animal.behavior.get_sound())
