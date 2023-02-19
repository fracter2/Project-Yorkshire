extends RigidBody2D

var speed = 300
var velocity = Vector2(-1,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(velocity.normalized() * speed)
	print(transform)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
