# extends ParallaxBackground


# func _ready():
# 	pass

# func _physics_process(delta):
# 	scroll_base_offset += Vector2(Global.dificultySpeed, 0) * delta
# 	if Global.coins <= 0 && !Global.gameover:
# 		endGame()


# func _on_timer_timeout():
# 	print("Speeding up!!!")
# 	Global.dificultySpeed += -25
# 	Global.level += 1


extends ParallaxBackground



func _ready():
	$"Scroll Timer".start()
	pass

func _physics_process(delta):
	scroll_base_offset += Vector2(Global.dificultySpeed, 0) * delta

func _on_timer_timeout():
	if Global.level > 1:
		Global.coins += 1 * Global.level #James Code
	print("Your Level is %s" % Global.level)
	Global.dificultySpeed += -25
	Global.level += 1
	Global._finalScore += Global.coins * Global.level
	print("coins %s" % Global.coins)
	if !Global.gameover:
		$"Scroll Timer".start()

