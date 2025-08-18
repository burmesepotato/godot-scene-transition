extends Node2D

@onready var _transition_rect := $SceneTransitionRect

func _on_spaceWindow_clicked(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("MouseLeftClick"):
		print("clicked")
		_transition_rect.transition_to("res://scenes/space.tscn")


func _on_spaceWindow_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_spaceWindow_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
