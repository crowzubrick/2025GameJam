extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


@export var speed = 400
@export var rotation_speed = 1.5

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_axis("ui_left", "ui_right")
	velocity = transform.x * rotation_direction * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
