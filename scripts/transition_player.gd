extends AnimationPlayer

@onready var transition_player := $"."

func _ready():
	transition_player.play("fade_in")
	
func transition_to(next_scene_path: String) -> void:
	transition_player.play("fade_out")
	
	await transition_player.animation_finished
	get_tree().change_scene_to_file(next_scene_path)
