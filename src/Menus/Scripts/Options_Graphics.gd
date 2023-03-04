extends Panel


func _ready():
	# Later, make sure the options are synced with any saved settings from files.
	pass
	

func _on_fullscreen_modes_item_selected(index):
	# This relies ont he fact that the Indexes match with the DisplayServer Window Modes enum
	DisplayServer.window_set_mode(index)
