extends Control

export var menu_scene : PackedScene

func open_menu():
	if get_tree().change_scene_to(menu_scene) != OK:
		printerr('couldn\'t open main menu!')
