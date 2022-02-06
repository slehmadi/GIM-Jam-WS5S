extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$transition/AnimationPlayer.play("fade_out")
	$ParallaxBackground/Sprite.texture = load(Global.drawerCond)
	$"The Key".hide()
	
	if Global.drawerCond == "res://assets/images/items/Level 5-lemari/lemari2 (kunci udah diambil).png":
		$key.queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_Area2D_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_key_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Global.drawerCond = "res://assets/images/items/Level 5-lemari/lemari2 (kunci udah diambil).png"
			$ParallaxBackground/Sprite.texture = load(Global.drawerCond)
			$"The Key".show()
			$AnimationPlayer.play("move_in")

func _on_The_Key_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$AnimationPlayer.play("move_out")

func _on_Exit_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Global.target_location = "res://src/Living Room/LivingRoom.tscn"
			$transition/ColorRect.show()
			$transition/AnimationPlayer.play("fade_in")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "move_in":
		$key.queue_free()
	elif anim_name == "move_out":
		$"The Key".hide()
