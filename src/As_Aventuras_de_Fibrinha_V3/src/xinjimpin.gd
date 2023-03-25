extends Node2D
#se a musica for impar toque.
func _ready():
	if Music.som % 2 == 1:
		 $audio_cena.play()
