# extends CharacterBody2D

# var gravity = 1000
# var jumpHeight = 25
# var maxHeight = 1000
# var forceToTheRight = 100
# var canJump = true


# func _ready():
# 	pass



# func _process(delta):
# 	velocity.y += gravity * delta
# 	move_and_slide()
# 	velocity.x = forceToTheRight
	
# 	if Input.is_action_pressed("Jump"):
# 		velocity.y -= jumpHeight
# 	elif Input.is_action_pressed("Speed"):
# 		forceToTheRight = 150
# 	elif Input.is_action_pressed("Slow"):
# 		forceToTheRight = 60
# 	elif Input.is_action_pressed("Throw"):
# 		canJump = false
	
# 	if Input.is_action_just_released("Speed"):
# 		forceToTheRight = 100
# 	elif Input.is_action_just_released("Slow"):
# 		forceToTheRight = 100
# 	pass


# extends CharacterBody2D 

# var forceToTheRight = 150
# var gravity = 10
# var groundJump = -300
# var airJump = -10
# var slowKey = 75
# var fastKey = 200


# @onready var ap = $Animations
# @onready var sprite = $Sprite2D

# func _ready():
# 	pass


# func _physics_process(_delta):
	
# 	move_and_slide()
# 	velocity.y += gravity 
# 	velocity.x = forceToTheRight

# 	if Input.is_action_pressed("Speed"): #if statment for movement
# 		velocity.x = fastKey
# 	elif Input.is_action_pressed("Slow"):
# 		velocity.x = slowKey
# 	elif Input.is_action_just_pressed("Jump") && is_on_floor():
# 		velocity.y = groundJump
# 	elif Input.is_action_just_pressed("Jump") && !is_on_floor():
# 		velocity.y = airJump
# 	else:
# 		velocity.x = forceToTheRight
# 	pass

# 	if  Input.is_action_pressed("Jump") && is_on_floor(): #if statment for animations
# 		ap.play("Jumping")
# 	elif Input.is_action_just_pressed("Jump") && !is_on_floor():
# 		ap.play("Jumping")
# 	elif is_on_floor() && velocity.x >= forceToTheRight: 
# 		ap.play("running")
	

##James Code
# extends CharacterBody2D 

# var gravity = 25
# var jump = -700
# var slowKey = -50
# var fastKey = -50


# @onready var ap = $Animations
# @onready var sprite = $Sprite2D

# func _ready():
# 	pass


# func _physics_process(_delta):

# 	move_and_slide()
# 	velocity.y += gravity 
	
# 	if !Global.gameover:
# 		if Input.is_action_just_pressed("Speed"): #if statment for movement
# 			Global.dificultySpeed += fastKey
# 		elif Input.is_action_just_released("Speed"):
# 			Global.dificultySpeed -= fastKey
# 		elif Input.is_action_just_pressed("Slow"):
# 			Global.dificultySpeed  -= slowKey
# 		elif Input.is_action_just_released("Slow"):
# 			Global.dificultySpeed += slowKey
# 		elif Input.is_action_just_pressed("Jump") && is_on_floor():
# 			velocity.y = jump
# 		elif Input.is_action_just_pressed("Jump") && !is_on_floor():
# 			velocity.y = jump
# 			Global.coins -= 1;
# 			print(Global.coins)
# 			# place coin mesh beneath player's feet wherever he is.
# 		else:
# 			Global.dificultySpeed = Global.dificultySpeed
# 		pass

# 		if  Input.is_action_pressed("Jump") && is_on_floor(): #if statment for animations
# 			ap.play("Jumping")
# 		elif Input.is_action_just_pressed("Jump") && !is_on_floor():
# 			ap.play("Jumping")
# 		elif is_on_floor(): 
# 			ap.play("running")  
## end of james code

extends CharacterBody2D 

var gravity = 25
var groundJump = -725
var airJump = -100
var slowKey = -35
var fastKey = -50


@onready var ap = $Animations
@onready var sprite = $Sprite2D

func _ready():
	pass


func _physics_process(_delta):
	
	move_and_slide()
	velocity.y += gravity 
	if !Global.gameover:
		if Input.is_action_just_pressed("Speed"): #if statment for movement
			Global.dificultySpeed += fastKey
		elif Input.is_action_just_released("Speed"):
			Global.dificultySpeed -= fastKey
		elif Input.is_action_just_pressed("Slow"):
			Global.dificultySpeed  -= slowKey
		elif Input.is_action_just_released("Slow"):
			Global.dificultySpeed += slowKey
		elif Input.is_action_just_pressed("Jump") && is_on_floor():
			velocity.y += groundJump
		elif Input.is_action_just_pressed("Jump") && !is_on_floor():
			velocity.y += airJump
		elif Input.is_action_just_pressed("Throw") && !is_on_floor():
			velocity.y += groundJump
			Global.coins -= 1
		else:
			Global.dificultySpeed = Global.dificultySpeed
		pass

		if  Input.is_action_pressed("Jump") && is_on_floor(): #if statment for animations
			ap.play("Jumping")
		elif Input.is_action_just_pressed("Jump") && !is_on_floor():
			ap.play("Jumping")
		elif Input.is_action_just_pressed("Throw") && !is_on_floor():
			ap.play("Jumping")
		elif is_on_floor(): 
			ap.play("running")
