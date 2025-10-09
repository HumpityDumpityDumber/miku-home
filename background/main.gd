extends Node3D

const utils = preload("res://utils.gd")

var _receive_msg_ref = JavaScriptBridge.create_callback(_msgReceived)

var ajv_instance

func _ready():
	utils.msgClient("app initialized")
	var window = JavaScriptBridge.get_interface("window")
	
	window.msgApp = _msgReceived
	
	var Ajv = JavaScriptBridge.get_interface("ajv7")
	var ajv = JavaScriptBridge.create_object(Ajv)

	const schema = {
		"type": "object",
		"properties": {
			"foo": { "type": "string" }
		},
		"required": ["foo"],
		"additionalProperties": false
	}

	var schema_json = JSON.stringify(schema)
	var js_schema = JavaScriptBridge.eval("JSON.parse").call([schema_json])

	var validate = ajv.compile(js_schema)
	
	const data = { "foo": 'bar' };
	
	var data_json = JSON.stringify(data)
	var js_data = JavaScriptBridge.eval("JSON.parse").call([data_json])

	print(validate.call(data))
func _msgReceived(msg):
	msg = msg[0]
	
