extends CharacterBody2D

var gravity = 1000
var jump = 50
var maxJump = 1000
var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y += gravity * delta
	move_and_slide()
	if Input.is_action_pressed("jump"):
		velocity.y -= jump
		
	pass
