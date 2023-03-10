extends Node2D

var i = 0

func _ready():
	$cutscene1.hide()
	$cutscene2.hide()
	$cutscene3.hide()
	$cutscene4.hide()
	$cutscene5.hide()
	$cutscene6.hide()
	$cutscene7.hide()
	$cutscene8.hide()
	$continue.hide()
	$seta_direita.hide()
	$back.hide()
	$seta_esquerda.hide()

func cutscene(n):
	match n:
		0:
			i += 1
			$back.hide()
			$seta_esquerda.hide()
			$Background.hide()
			$Weather.hide()
			$butao_opcoes.hide()
			$Butao_Start.hide()
			$Audio_chuva.stop()
			$cutscene1.show()
			$continue.show()
			$seta_direita.show()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene2.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene3.show()
		1:
			i += 1
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			$back.hide()
			$seta_esquerda.hide()
			$cutscene4.show()
			$seta_direita.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene5.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$cutscene6.show()
			$back.show()
			$seta_esquerda.show()
		2:
			$back.hide()
			$seta_esquerda.hide()
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			i += 1
			$cutscene7.show()
			yield(get_tree().create_timer(3.0),"timeout")
			$cutscene8.show()
			$back.show()
			$seta_esquerda.show()

func _on_Butao_Start_pressed():
	yield(get_tree().create_timer(0.3),"timeout")
	cutscene(i)

func _on_continue_pressed():
	cutscene(i)

func _on_back_pressed():
	i -= 2
	cutscene(i)

func _on_butao_opoes_pressed():
	pass # Replace with function body.
