extends Camera2D

var camera_displacement:float = 0.4
@export_enum("DEFAULT","CENTERED","CENTERED_ZOOMED") var camera_state:int = 0
enum CAMERA_STATE {
	DEFAULT,
	CENTERED,
	CENTERED_ZOOMED
}

var target_pos:Vector2 = Vector2.ZERO
@export var camera_speed:float = 32



func _process(delta):
	#var mpos:Vector2 = get_local_mouse_position()
	target_pos = get_local_mouse_position() * camera_displacement
	position = lerp(position, target_pos, camera_speed * delta)
