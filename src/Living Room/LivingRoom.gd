extends Node2D

onready var anim = $transition/AnimationPlayer
onready var theBook = $"The Book"

var haveKey
var textShown = false

# Called when the node enters the scene tree for the first time.
func _ready():
	haveKey = Global.bedroomKey
	anim.play("fade_out")
	theBook.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)

func _on_Drawer_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Global.target_location = "res://src/Living Room/Drawer.tscn"
			$"transition/ColorRect".show()
			anim.play("fade_in")

func _on_Book_input_event(viewport, event, shape_idx):
	var theBookAnim = $"The Book/TheBookAnimation"
	if event is InputEventMouseButton:
		if event.is_pressed():
			theBook.show()
			theBookAnim.play("TheBook_move_in")


func _on_The_Book_input_event(viewport, event, shape_idx):
	var theBookAnim = $"The Book/TheBookAnimation"
	if event is InputEventMouseButton:
		if event.is_pressed():
			theBookAnim.play("TheBook_move_out")

func _on_Door_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Global.target_location = "res://src/Bathroom/Bathroom.tscn"
			$"transition/ColorRect".show()
			anim.play("fade_in")
			
func _on_Bedroom_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() and haveKey:
			Global.target_location = "res://src/Bedroom/Bedroom.tscn"
			$"transition/ColorRect".show()
			anim.play("fade_in")
		elif event.is_pressed() and !haveKey:
			$Label.show()
			textShown = true

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and textShown:
			$Label.hide()
			textShown = false

func _on_TheBookAnimation_animation_finished(anim_name):
	if anim_name == "TheBook_move_in":
		$Book.hide()
		$Door.hide()
		$Drawer.hide()
	elif anim_name == "TheBook_move_out":
		theBook.hide()
		$Book.show()
		$Door.show()
		$Drawer.show()
