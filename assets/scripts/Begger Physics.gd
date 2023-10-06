extends CharacterBody2D



func _ready():
	pass 

var gravity = 25


func _process(_delta):
	move_and_slide()
	velocity.y += gravity
	velocity.x = Global.dificultySpeed
	pass
