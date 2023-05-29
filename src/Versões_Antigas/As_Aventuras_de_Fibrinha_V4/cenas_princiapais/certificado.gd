extends Node2D

func _ready():
	if Music.som % 2 == 1:
		$AudioStreamPlayer2D.play()
