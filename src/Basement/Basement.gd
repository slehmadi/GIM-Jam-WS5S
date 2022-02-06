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

func _on_Timer_timeout():
	var Door_sound = $AudioStreamPlayer2D
	Door_sound.play()
	var jumpscare_sound = $NoniDeadEnd/AudioStreamPlayer2D
	jumpscare_sound.play()
	$NoniDeadEnd/NoniThird.show()


func _on_Pintu_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	


func _on_Pintu_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
