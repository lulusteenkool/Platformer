extends Node2D

var direction = 1
const speed = 60

@onready var raycast_r: RayCast2D = $RaycastR
@onready var raycast_l: RayCast2D = $RaycastL
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_r.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if raycast_l.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * speed  * delta
