tool
extends ColorRect

export var label: String setget set_label
export var icon: String setget set_icon


func _ready() -> void:
	# Use colours directly from the editor to match
	color = get_color("prop_category", "Editor")
	$"%Label".set("custom_colors/font_color",
			get_color("highlighted_font_color", "Editor"))


func set_label(value: String) -> void:
	if not is_inside_tree():
		yield(self, "ready")
	
	label = value
	$"%Label".text = label


func set_icon(value: String) -> void:
	if not is_inside_tree():
		yield(self, "ready")
		
	icon = value
	
	if value.begins_with("res://"):
		$"%Icon".texture = load(value)
	else:
		$"%Icon".texture = get_icon(value, "EditorIcons")

	$"%Icon".visible = $"%Icon".texture != null
