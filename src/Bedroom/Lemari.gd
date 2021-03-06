extends Node2D

onready var anim = $transition/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("fade_out")


func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
