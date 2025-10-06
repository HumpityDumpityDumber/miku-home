extends Node3D

func _ready():
	JavaScriptBridge.eval("msgClient('shell initialized');")
