extends Node2D

@onready var transition_player := $TransitionPlayer


func _on_spaceWindow_clicked(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("MouseLeftClick"):
		transition_player.transition_to("res://scenes/space.tscn")


func _on_spaceWindow_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_spaceWindow_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)


func _on_flowerVase_clicked(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("MouseLeftClick"):
		transition_player.transition_to("res://scenes/flowers.tscn")


func _on_flowerVase_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_flowerVase_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
