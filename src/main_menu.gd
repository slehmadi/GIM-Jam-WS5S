extends Node2D

onready var backstory = $Backstory


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.target_location = "res://src/Living Room/LivingRoom.tscn"
	backstory.hide()
	$"transition/ColorRect".hide()
	pass

func _on_PlayButton_pressed():
	#Global.select_sound.play()
	var anim = $"transition/AnimationPlayer"
	$"transition/ColorRect".show()
	anim.play("fade_in")

func _on_BackstoryButton_pressed():
	#Global.select_sound.play()
	backstory.show()

func _on_BackButton_pressed():
	#Global.select_sound.play()
	backstory.hide()
