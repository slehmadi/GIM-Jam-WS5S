extends Node2D

var inventory = []
var from_location = ""
var target_location = ""

var drawerCond = "res://assets/images/items/Level 5-lemari/lemari1 (ada kunci).png"

onready var select_sound = $select

func _ready():
	#select_sound.loop = false
	pass
