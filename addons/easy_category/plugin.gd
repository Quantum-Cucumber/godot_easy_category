tool
extends EditorInspectorPlugin

const PREFIX := "_category_"

var category_scene := preload("res://addons/easy_category/category_label.tscn")


func can_handle(_object: Object) -> bool:
	return true
	

func parse_property(_object: Object, _type: int, path: String, _hint: int, _hint_text: String, _usage: int) -> bool:
	if path.begins_with(PREFIX):
		var category = category_scene.instance()
		category.label = _format_path(path)
		add_custom_control(category)
		return true
	return false


func _format_path(path: String) -> String:
	# Remove prefix and replace underscore with space
	path = path.trim_prefix(PREFIX).replace("_", " ")

	# Title Case
	
	var new_path := ""
	var caps := true
	for i in path.length():
		# Make letter uppercase if caps flag is set
		new_path += path[i].to_upper() if caps else path[i].to_lower()

		# Set caps flag for next character if this character is a space
		caps = true if path[i] == " " else false


	return new_path
