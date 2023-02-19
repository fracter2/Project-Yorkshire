extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	PauseMenu.in_pause_menu = true



func _on_resume_button_down():
	PauseMenu.in_pause_menu = false
	queue_free()


func _on_options_button_down():
	pass # Replace with function body.


func _on_main_menu_button_down():
	pass # Replace with function body.


func _on_quit_button_down():
	get_tree().quit()
