extends Node3D

func msgClient(message: String) -> void:
	JavaScriptBridge.eval("msgClient('%s');" % message)

func _ready():
	msgClient("app initialized")
	msgClient("waiting for overlay to connect...")
