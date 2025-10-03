extends MeshInstance3D

var _update_callback_ref = JavaScriptBridge.create_callback(_update_3d_label)

func _ready():
	mesh.text = "run update3dLabel() to update this text"
	var window = JavaScriptBridge.get_interface("window")
	window.update3dLabel = _update_callback_ref

func _update_3d_label(args):
	mesh.text = str(args[0])
	JavaScriptBridge.eval("msgClient(\"3d Label updated to %s\")" % [args[0]])
