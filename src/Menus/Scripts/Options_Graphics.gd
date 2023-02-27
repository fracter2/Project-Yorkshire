extends Panel

@onready var Fullscreen_Modes = $Options_Graphics/List/Fullscreen_Modes

# Called when the node enters the scene tree for the first time.
func _ready():
	# Later, make sure the options are synced with any saved settings from files.
	pass
	

func _on_fullscreen_modes_item_selected(index):
	# This relies ont he fact that the Indexes match with the DisplayServer Window Modes enum
	DisplayServer.window_set_mode(index)
	DisplayServer.clipboard_get()
	
	#DisplayServer.border
