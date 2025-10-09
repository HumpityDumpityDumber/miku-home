extends Node

static func msgClient(message: String) -> void:
	JavaScriptBridge.eval("msgClient('%s');" % message)
