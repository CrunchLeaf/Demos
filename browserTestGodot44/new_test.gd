extends Node # extension of the basic `Node` scene

var my_colors := MyColors.new() # initialize instnace of class
var x:= my_colors.bio_max_health # auto type with `:=` (walrus operator)
var y: float # initialize `y` with type but no value

func _ready():
	# when tscn (scene node) loads, _ready is the first to run in instance creation
	y = 10
	pass

# On functions,  if kwargs not used, underscore it else warning arises
func _input(_event: InputEvent) -> void:
	# handling events from input peripherals
	pass

func _physics_process(_delta: float) -> void:
	# always called at a fixed rate which may not be as often as when _process() is called
	pass

func _process(delta: float) -> void:
	# called as often as the CPU speed allows, fps
	# when fps is slow, also use _physics_process to counter jitter, clipping
	# unregistered collisions, etc..
	$Icon.global_rotation_degrees += delta
	pass
