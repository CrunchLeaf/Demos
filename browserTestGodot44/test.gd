extends Node # <--correction
# This is a comment
class_name MyColors

@export_group("Custom Colors", "color_")
@export var color_bg_base: Color = Color("0d4aff7e") # Color Background Base
@export var color_fg_base: Color = Color("ff00067e") # Color Foreground Base
@export var color_blend_base: Color = Color("a3a3a37e")# Color Blend Base
@export_group("Character Details", "bio_")
@export var bio_name: String = ""
@export var bio_max_health: int = 0
@export var bio_money: Array[float] = [0.1, 0.2]
@export var bio_level_up: bool = false
@export_range(0, 512, 1, "suffix:m") var bio_speed: int = 0
@export_range(0, 999_999_999, 1, "suffix:exp") var bio_experience: int = 0
@export_range(0, 1000, .01, "suffix:cal") var bio_endurance: float = 0.0
@export_range(0, 360, 1, "degrees") var bio_degree_of_vision = 0
@export_range(-180, 180, 1, "radians_as_degrees") var bio_degree_of_facing = 0
