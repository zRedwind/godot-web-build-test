extends Control

@export var file_text: RichTextLabel
@export var selectable_files: OptionButton
@export var new_file_name_input: LineEdit

signal _read_file_selected(file_name: String)
signal _create_file_signal(file_name: String)

func create_file():
	# Emits that the create_file button was pressed
	_create_file_signal.emit(new_file_name_input.text)
	new_file_name_input.text = ""

func delete_file():
	var selected_file_id = selectable_files.get_selected_id()
	var selected_file_name = selectable_files.get_item_text(selected_file_id)
	#print("selected file id is: " + str(selected_file_id))
	#print("selected file name is: " + selected_file_name)
	
	if selected_file_name == "none":
		print("No file selected to delete")
	else:
		# Delete the file here
		print ("Deleting file: " + selected_file_name)
		selectable_files.remove_item(selected_file_id)
		var num_items = selectable_files.get_item_count()
		selectable_files.select(-1)
		
		# Delete the file here
		
		# Removes the file from the list of selectable files
		# Sets the item_ids of the remaining elements to match their new index location
		for i in num_items:
			if i == 0:
				pass
			else:
				selectable_files.set_item_id(i, i)
		selectable_files.select(0)

func new_file_selected(_index: int):
	# Emits that a new file was selected when a new file is selected. This will be used to populate the 
	# file_text.
	#print("The selected file is now: " + selectable_files.get_item_text(_index))
	_read_file_selected.emit(selectable_files.get_item_text(_index))

func set_file_text(_new_text: String):
	file_text.text = _new_text

func update_file_list():
	pass

func populate_file_list():
	pass
