extends MarginContainer

var controls = preload("res://src/Menus/Options/Options_Controls.tscn")
var graphics = preload("res://src/Menus/Options/Options_Graphics.tscn")
var audio = preload("res://src/Menus/Options/Options_Audio.tscn")



func update_area(type:String):
	get_child(0).queue_free()
	
	if type == "controls": add_child(controls.instantiate())
	elif type == "graphics": add_child(graphics.instantiate())
	elif type == "audio": add_child(audio.instantiate())
	
