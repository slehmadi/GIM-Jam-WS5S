extends Node2D

var hours_hand = false
var minutes_hand = false
var seconds_hand = false
var did_click = false
var mouse_entered = [hours_hand, minutes_hand, seconds_hand]
var group = ""
var hover_hand = 0

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			did_click = true
		else:
			did_click = false

func _ready():
	if self.name == "HOURS":
		self.rotate(deg2rad(180))
	elif self.name == "MINUTES":
		self.rotate(deg2rad(0))
	elif self.name == "SECONDS":
		self.rotate((deg2rad(90)))
	
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
	crossed_hand()
	if !did_click:
		mouse_entered = true
	else:
		mouse_entered = false
		
	return self.name

func minus_to_degree(value):
	if value < 0:
		return value + 360
	
	return value

func hand_clicked(value):
	if value == "HOURS":
		hours_hand = true
		minutes_hand = false
		seconds_hand = false
	elif value == "MINUTES":
		hours_hand = false
		minutes_hand = true
		seconds_hand = false
	elif value == "SECONDS":
		hours_hand = false
		minutes_hand = false
		seconds_hand = true
	
	pass
	
func crossed_hand():
	hover_hand += 1
	
	if hover_hand > 1:
		mouse_entered = false
	
	pass
