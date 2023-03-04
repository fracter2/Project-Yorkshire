extends Node

var in_main_menu:bool = false
var in_pause_menu:bool = false
@onready var pause_menu := preload("res://src/Menus/Pause_Menu.tscn") 

func _input(event):
	if Input.is_action_just_pressed("pause") and not in_main_menu:
		if not in_pause_menu:
			# get IN pause menu
			var pause_menu_instance = pause_menu.instantiate()
			$"/root/World".add_child(pause_menu_instance)
			in_pause_menu = true
		else: 
			# Get out of pause menu
			# Be handled by the pause_menu scene? YES
			pass
			
