extends Node3D

func _ready():
	JavaScriptBridge.eval("msgClient('this is a test');")
	get_tree().get_root().set_transparent_background(true)
