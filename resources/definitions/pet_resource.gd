class_name PetResource
extends Resource

#### Definitions for each Pet ####
@export var pet_name: String
@export var behavior: Behavior

#### Behaviors we can pick ####
enum Behavior {
	Default,
	Rabbit,
	Hedgehog,
	Cat,
}

class Pet extends Node:
	var pet_name: String
	var behavior: DefaultPetBehavior

class DefaultPetBehavior:
	func default():
		return "Not defined"

class Rabbit extends DefaultPetBehavior:
	func get_sound():
		return "pyon"

class Hedgehog extends DefaultPetBehavior:
	func get_sound():
		return "shushu"

class Cat extends DefaultPetBehavior:
	func get_sound():
		return "meow"

var all_behaviors = {
	Behavior.Default: DefaultPetBehavior,
	Behavior.Rabbit: Rabbit,
	Behavior.Hedgehog: Hedgehog,
	Behavior.Cat: Cat,
}

func instantiate():
	var pet = Pet.new()
	pet.pet_name = pet_name
	pet.behavior = all_behaviors[behavior].new()
	return pet
