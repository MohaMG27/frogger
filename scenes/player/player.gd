extends CharacterBody2D


var input_dir : Vector2 = Vector2.ZERO
var speed : int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _physics_process(_delta: float) -> void:
	input_dir = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = speed * input_dir
	animate()
	move_and_slide()

func animate():
	if input_dir:
		$AnimatedSprite2D.flip_h = input_dir.x > 0

		if input_dir.x != 0:
			$AnimatedSprite2D.animation = "Left"

		else:
			$AnimatedSprite2D.animation = 'Up' if input_dir.y < 0 else 'Down'

	else:
		$AnimatedSprite2D.frame = 0


func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("you win")

