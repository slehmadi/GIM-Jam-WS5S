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
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var Door_sound = $AudioStreamPlayer
	Door_sound.play()
	var jumpscare_sound = $NoniDeadEnd/AudioStreamPlayer
	jumpscare_sound.play()
	$NoniDeadEnd/NoniThird.show()
