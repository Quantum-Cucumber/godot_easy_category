tool
extends EditorPlugin

var plugin_script := preload("res://addons/easy_category/plugin.gd")
var plugin: EditorInspectorPlugin = plugin_script.new()


func _enter_tree():
	add_inspector_plugin(plugin)


func _exit_tree():
	remove_inspector_plugin(plugin)
