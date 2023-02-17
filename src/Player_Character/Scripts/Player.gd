extends CharacterBody2D

@export var speed: float = 6000
@export var speed_max: float = 32000
@export var drag:float = 0.8


func _physics_process(delta):
	var input_dir: Vector2 = Vector2.ZERO
	input_dir.y = Input.get_axis("move_up", "move_down")
	input_dir.x = Input.get_axis("move_left", "move_right")
	input_dir = input_dir.normalized()
	
	velocity += input_dir * speed * delta
	velocity *= drag
	velocity.x = clamp(velocity.x, -speed_max, speed_max)
	velocity.y = clamp(velocity.y, -speed_max, speed_max)
	
	
	move_and_slide()


func _process(delta):
	# Implement a fix for movement jitter
	pass
	

#func camera_update(var state:int = 0, var val:float = -1):
#	pass
