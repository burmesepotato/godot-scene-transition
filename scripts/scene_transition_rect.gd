extends ColorRect

@export_file("*.tscn") var next_scene_path: String
# ask for String, FILE type, filter "*.tscm"

@onready var _anim_player := $AnimationPlayer
# Can also do explicit typing instead of type inference
# like- onready var _anim_player: AnimationPlayer = $AnimationPlayer
# No performance differences cuz Godot figures out at compilation, not runtime.

func _ready() -> void:
	# Plays the animation backward to fade in
	_anim_player.play_backwards("Fade")

func transition_to(_next_scene := next_scene_path) -> void:
	_anim_player.play("Fade")
	await _anim_player.animation_finished
	
	get_tree().change_scene_to_file(_next_scene)
