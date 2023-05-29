extends Node2D
#faz tocar audio caso nescessario
func _ready():
	if Music.som % 2 == 1:
		$audio_elevador.play()
