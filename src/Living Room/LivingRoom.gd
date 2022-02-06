extends Node2D

onready var anim = $transition/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("fade_out")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_Book_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
