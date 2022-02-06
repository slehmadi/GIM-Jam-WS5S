extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var t
	t = $Timer
	t.set_one_shot(true)
	t.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Pintu_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	


func _on_Pintu_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_Kunci_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Kunci_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_Kunci_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Kunci.hide()
			Global.flag = true


func _on_Timer_timeout():
	var footstep = $Footsteps
	var ambient = $Ambient
	var jumpscare_sound = $NoniDeadEnd/AudioStreamPlayer
	var extreme = $NoniDeadEnd/Jumpscare
	ambient.stop()
	footstep.stop()
	jumpscare_sound.play()
	extreme.play()
	$NoniDeadEnd/NoniThird.show()


func _on_Pintu_input_event(viewport, event, shape_idx):
	var footstep = $Footsteps
	var ambient = $Ambient
	var t = $Timer
	if (Global.flag == true):
		ambient.stop()
		footstep.stop()
		t.stop()
