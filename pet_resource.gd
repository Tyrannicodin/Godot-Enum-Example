class_name PetResource
extends Resource

#### Definitions for each Pet ####
@export var pet_name: String
@export var behavior: Behavior

#### Behaviors we can pick ####
enum Behavior {
	None = 0,
	Rabbit = 1,
	Hedgehog = 2,
	Cat = 3,
}

@abstract class PetBehavior:
	@abstract func get_sound() -> String

class None extends PetBehavior:
	func get_sound():
		return "Not defined"

class Rabbit extends PetBehavior:
	func get_sound():
		return "pyon"

class Hedgehog extends PetBehavior:
	func get_sound():
		return "shushu"

class Cat extends PetBehavior:
	func get_sound():
		return "meow"

var all_behaviors = {
	Behavior.None: None,
	Behavior.Rabbit: Rabbit,
	Behavior.Hedgehog: Hedgehog,
	Behavior.Cat: Cat,
}

func instantiate():
	var pet = Pet.new()
	pet.pet_name = pet_name
	pet.behavior = all_behaviors[behavior].new()
	return pet
