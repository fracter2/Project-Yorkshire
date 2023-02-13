extends CharacterBody2D

@export var speed: float = 4000
@export var speed_max: float = 6000
@export var drag:float = 0.8
#var vel:Vector2 = Vector2.ZERO

enum CAMERA_STATE {
	DEFAULT,
	CENTERED,
	CENTERED_ZOOMED
}

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



func camera_update(var STATE:int = 0):
	if STATE == 1:
			
