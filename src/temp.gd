extends Node2D

var inventory = []

var is_dragging = false
var click_position = Vector2.ZERO
var move_delta = Vector2.ZERO
var did_click = false
var mouse_down = false
var last_rotation_degree : float = 0

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_dragging = true
		else:
			is_dragging = false
			
	if is_dragging and did_click:
		_move_sprite_away(event.position)
		
	if Input.is_action_just_released("Mouse_Left"):
		did_click = false
		last_rotation_degree = self.rotation_degrees
	pass

func _move_sprite_away(movement_position):
	move_delta = click_position - movement_position
	
	pass

func _physics_process(delta):
	if is_dragging and did_click:
		self.rotation = (-move_delta.x + last_rotation_degree)*0.01
	
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("Mouse_Left"):
		did_click = true
		click_position = event.position
	
	pass # Replace with function body.
