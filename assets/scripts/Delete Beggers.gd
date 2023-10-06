extends Area2D



func _ready():
	pass 



func _process(_delta):
	pass


func _on_body_entered(_body):
	if _body.is_in_group("Begger"):
		Global.currentBeggers -= 1
	elif _body.is_in_group("Player"):
		Global.endGame() #james code
	elif _body.is_in_group("Coin"):
		Global.currentCoins -= 1
