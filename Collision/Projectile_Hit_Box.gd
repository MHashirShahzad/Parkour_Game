extends Hit_Box
class_name Projectile_Hit_Box

## If it pierces.
@export var piercing:bool = false
## speed at which it travels
@export var speed:int = 200
var direction:Vector2 

func _init() -> void:
	collision_layer = 2
	collision_mask = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var kb_direction = -direction
	position += speed * direction * delta

func destroy():
	if piercing:
		return
	queue_free()

func _on_screen_exited():
	queue_free()


