extends Area2D

var dir : Vector2 = Vector2.LEFT
var speed : int = 60

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if position.x < 0:
		dir.x = 1
		$Sprite2D.flip_h = true


func _physics_process(delta: float) -> void:
	position.x += dir.x * delta * speed


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
