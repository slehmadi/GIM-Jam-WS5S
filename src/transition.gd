extends CanvasLayer

onready var anim = $AnimationPlayer
onready var color = $ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fade_in":
		get_tree().change_scene(Global.target_location)
	if anim_name == "fade_out":
		color.hide()
