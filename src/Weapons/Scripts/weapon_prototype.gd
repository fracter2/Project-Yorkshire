extends StaticBody2D

var bullet = preload("res://src/Ammo/bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("action_primary"): shoot()
	

func shoot():
	var bullet_Instance = bullet.instantiate()
	
	get_parent().add_child(bullet_Instance)
	

