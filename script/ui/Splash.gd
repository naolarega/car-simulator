extends Control

export var menu_scene : PackedScene

func open_menu():
	get_tree().change_scene_to(menu_scene)
