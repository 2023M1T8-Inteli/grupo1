extends Node2D

#começa o som da cena se a opção som estiver ativa
func _ready():
	if Music.som % 2 == 1:
		$AudioStreamPlayer2D.play()
