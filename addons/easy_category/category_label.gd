tool
extends ColorRect

export var label: String setget set_label


func _ready() -> void:
	# Use colours directly from the editor to match
	color = get_color("prop_category", "Editor")
	$Label.set("custom_colors/font_color",
			get_color("highlighted_font_color", "Editor"))


func set_label(value: String) -> void:
	label = value
	$Label.text = label
