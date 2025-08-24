extends Node3D

func _ready():
	JavaScriptBridge.eval("sendClientMessage('this is a test');")
