extends RigidBody2D
var bullet = preload("res://src/Ammo/bullet.tscn")
var speed = 100
var velocity = Vector2(-1,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(velocity.normalized() * speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
