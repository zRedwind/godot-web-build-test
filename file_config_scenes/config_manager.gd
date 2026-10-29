extends Node

@onready var saved_files
const SAVED_FILES =  "user://savedfiles.txt"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if FileAccess.file_exists(SAVED_FILES):
		var file = FileAccess.open(SAVED_FILES, FileAccess.READ)
		#print("savedfiles.txt found")
	else:
		var file = FileAccess.open(SAVED_FILES, FileAccess.WRITE)
		#print("savedfiles.txt not found. Created new savedfiles.txt file")

func create_new_file(_new_file_name: String):
	var _new_file_location = "user://file/" + _new_file_name + ".txt"
	FileAccess.open(_new_file_location, FileAccess.READ)

func write_to_file(_text_to_write: String):
	pass
