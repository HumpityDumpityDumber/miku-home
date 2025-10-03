extends Node3D

func _ready():
	JavaScriptBridge.eval("msgClient('shell initialized');")
	get_tree().get_root().set_transparent_background(true)
