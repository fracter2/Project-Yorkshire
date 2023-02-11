extends CharacterBody2D

@export var speed: Vector2 = Vector2(200,200)

func _physics_process(delta):
	
	
	move_and_slide()
