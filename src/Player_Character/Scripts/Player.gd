extends CharacterBody2D

@export var speed: float = 6000
@export var speed_max: float = 32000
@export var drag:float = 0.8
var input_dir := Vector2.ZERO

@onready var Visuals := $Visuals
@onready var prev_global_pos := Vector2.ZERO
@onready var prev_global_pos2 := Vector2.ZERO
var custom_velocity := Vector2.ZERO

var screen_shake: float = 0
var screen_shake_ko:float = 1
var screen_shake_reduce:float = 1



func _physics_process(delta):
	input_dir = Vector2.ZERO
	input_dir.y = Input.get_axis("move_up", "move_down")
	input_dir.x = Input.get_axis("move_left", "move_right")
	input_dir = input_dir.normalized()
	
	velocity += input_dir * speed * delta
	velocity *= drag
	velocity.x = clamp(velocity.x, -speed_max, speed_max)
	velocity.y = clamp(velocity.y, -speed_max, speed_max)
	
	prev_global_pos = global_position
	
	move_and_slide()


func _process(delta):
	Visuals.global_position = prev_global_pos.lerp(global_position, Engine.get_physics_interpolation_fraction())
