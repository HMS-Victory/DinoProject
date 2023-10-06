extends Node

var dificultySpeed = -75
var spawnerSpeed = 0
var coins = 15
var currentCoins = 0
var maxCoins
var currentBeggers = 0
var level = 1
var maxBeggers
var gameover = false
var ongoingScore = 0
var _finalScore = 0

func _ready():
	pass


func _process(_delta):
	maxBeggers = level
	maxCoins = level
#James Code
	if coins <= 0 && !gameover:
		endGame()


func endGame():
	gameover = true
	dificultySpeed=0
	_finalScore += ongoingScore
#End of James code
