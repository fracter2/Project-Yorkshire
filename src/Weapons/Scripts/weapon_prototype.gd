extends StaticBody2D

var bullet = preload("res://src/Ammo/bullet.tscn")
var reload = 0;
var reloadTime = 0.1;
var reloadReady = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	reload -= delta;
	if (Input.is_action_pressed("action_primary") && reload < 0):
		shoot()
		reload = reloadTime
	
func shoot():
	var bullet_Instance = bullet.instantiate()
	
	get_parent().add_child(bullet_Instance)
	

