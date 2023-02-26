extends Camera2D

@export var displacement:float = 0.4
var displacement_ko:float = 1
var zoom_ko:float = 1 

@export var speed:float = 1
var speed_ko:float = 1

var target_pos:Vector2 = Vector2.ZERO


func _process(delta):
	target_pos = get_local_mouse_position() * displacement * displacement_ko
	position = lerp(position, target_pos, speed * speed * speed_ko)



