extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Pintu_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	


func _on_Pintu_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)