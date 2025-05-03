extends StaticBody2D

@onready var texture := $SpriteTexture
@onready var actBox := $ActionBox
@onready var hitBox := $HitBox
@onready var hurtBox := $HurtBox

@export_category("Stats")
@export_range(1, 999, 1, "suffix:lvl") var classLvl : int = 1
@export_range(0, 9_999_999, 1, "suffix:exp") var currentExp : int = 0
@export_range(-10, 999_999, 1, "suffix:MaxHp") var maxHP : int = 1
@export_range(-10, 999_999, 1, "suffix:HP") var currentHP : int = 1
@export var currentFacing : String = "right"

# changes character facing, default is right facing
func change_facing() -> void:
	texture.flip_h()
	if currentFacing == "right":
		hitBox.position = Vector2(-2, -12)
		hurtBox.position = Vector2(6.5, -13)
	else: # facing left
		hitBox.position = Vector2(2, -12)
		hurtBox.position = Vector2(-6.5, -13)

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass
