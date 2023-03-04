extends StaticBody2D

var bullet = preload("res://src/Ammo/bullet.tscn")

var reload = 0;
var reloadTime = 0.1;
var bullet_Speed = 1000;
var reloadReady = true;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	reload -= delta;
	rotation = get_global_mouse_position().angle_to_point(position)
	if (Input.is_action_pressed("action_primary") && reload < 0):
		shoot()
		reload = reloadTime
	
	
	
func shoot():
	var bullet_Instance = bullet.instantiate()
	bullet_Instance.global_position = get_node("Marker2D").global_position
	bullet_Instance.rotation_degrees = rotation_degrees
	bullet_Instance.apply_impulse(Vector2(-bullet_Speed,0).rotated(rotation))
	get_tree().get_root().add_child(bullet_Instance)
	

