extends Node2D

@export var main_menu_canvas: CanvasLayer
@export var file_test_canvas: CanvasLayer

func hide_all_canvas():
	main_menu_canvas.set_visible(false)
	file_test_canvas.set_visible(false)

func show_main_menu():
	hide_all_canvas()
	main_menu_canvas.set_visible(true)

func show_file_test():
	hide_all_canvas()
	file_test_canvas.set_visible(true)
