extends MeshInstance3D

func _ready():
	mesh.text = "run startClock()"

func _process(_delta):
	var timeDict = Time.get_time_dict_from_system()
	var hour = timeDict["hour"]
	var minute = timeDict["minute"]
	mesh.text = "%02d:%02d" % [hour, minute]
	
