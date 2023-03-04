extends Control

var options_scene = preload("res://src/Menus/Options/Options.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	PauseMenu.in_pause_menu = true



func _on_resume_button_down():
	PauseMenu.in_pause_menu = false
	queue_free()


func _on_options_button_down():
	var instance = options_scene.instantiate()
	$CanvasLayer/MarginContainer.add_child(instance)


func _on_main_menu_button_down():
	# if multiplayer, EXIT SERVER
	get_tree().change_scene_to_file("res://src/Menus/Main Menu.tscn")
	PauseMenu.in_pause_menu = false
	queue_free()
	


func _on_quit_button_down():
	get_tree().quit()
