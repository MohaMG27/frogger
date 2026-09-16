extends Node2D

var car_scene : PackedScene = preload("res://scenes/map and props/car.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass




func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var markerPosition = $spawnCars.get_children().pick_random() as Marker2D
	car.position = markerPosition.position
	$Object.add_child(car)

	car.connect("body_entered", go_to_title)


func go_to_title() -> void:
	print("you lost!")

