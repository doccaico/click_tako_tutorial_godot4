extends Area2D

const EXPLOSION_OBJ = preload("res://Scenes/explosion.tscn")
const DEFAULT_SPEED = 250

var direction: Vector2
var speed = DEFAULT_SPEED

func _ready() -> void:
	direction.x = randf_range(-1, 1)
	direction.y = randf_range(-1, 1)


func _process(delta: float) -> void:
	position += speed * delta * direction


func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			var explosion = EXPLOSION_OBJ.instantiate()
			explosion.position = position
			get_tree().root.add_child(explosion)
			queue_free()
