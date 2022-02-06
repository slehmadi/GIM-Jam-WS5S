extends Node2D

onready var anim = $transition/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("fade_out")

func _on_Lemari_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Lemari_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_Lemari_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Global.target_location = "res://src/Bedroom/wardrobe.tscn"
			$"transition/ColorRect".show()
			anim.play("fade_in")


func _on_AudioStreamPlayer_finished():
	var wind = $AudioStreamPlayer
	wind.play()
	pass # Replace with function body.
