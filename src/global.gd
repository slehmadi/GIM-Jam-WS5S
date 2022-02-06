extends Node2D

var inventory = []

func _ready():
	pass


func _on_Button_pressed():
	$"/root/Global".hide()
	get_tree().change_scene("res://src/Clock.tscn")
