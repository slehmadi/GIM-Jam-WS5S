extends Node2D

var mouse_entered = false
var did_click = false
var group = ""


func _ready():
	self.rotate(deg2rad(-30))
	
	pass

func _process(_delta):
	if mouse_entered and Input.is_action_pressed("Mouse_Left"):
		look_at(get_global_mouse_position())
		print(rad2deg(self.rotation))
		print(round(self.rotation))
		print(int(minus_to_degree(rad2deg(self.rotation))) % 360)
		print(deg2rad(-90))
		print(self.rotation == deg2rad(-90))
	elif Input.is_action_just_released("Mouse_Left"):
		mouse_entered = false
	else:
		pass
#
func _on_Area2D_mouse_entered():
	mouse_entered = true

func minus_to_degree(value):
	if value < 0:
		return value + 360
	
	return value
