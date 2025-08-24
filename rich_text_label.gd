extends RichTextLabel

var _callback_ref = JavaScriptBridge.create_callback(_update_text)

func _ready():
	var window = JavaScriptBridge.get_interface("window")
	window.updateLabel = _callback_ref

func _update_text(args):
	text = str(args[0])
