extends Camera2D

@export var displacement:float = 0.4
var displacement_ko:float = 1

@onready var zoom_default:Vector2 = zoom
## This value should not be modified directly. Use set_zoom_ko() instead.
var zoom_ko:float = 1 

@export var speed_ko:float = 1
@onready var speed_default:float = position_smoothing_speed



func _process(delta):
	position  = (get_global_mouse_position() - get_screen_center_position()) * displacement * displacement_ko


func set_zoom_ko(fraction:float):
	zoom_ko = fraction
	zoom = zoom_default * zoom_ko
