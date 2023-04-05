extends Node2D
#define a variavel como 0 para começar no 0
var i = 0

#função que controla qual cena da cutscene aparece
func _2cutscene(n):
	match n:
		0:
			#1 tela
			i += 1
			$_2back.hide()
			$_2continue.show()
			$_2cutscene1.show()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			$Label.hide()
			if Music.som % 2 == 1:
				$audio_cutscene2.play()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene2.show()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene3.show()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene4.show()
			yield(get_tree().create_timer(1),"timeout")
			$_2cutscene5.show()
		1:
			#2 tela
			i += 1
			$Label.hide()
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			$_2cutscene6.show()
			$_2back.show()
		2:
			#3 tela
			$Label.hide()
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			i += 1
			$_2cutscene7.show()
			$_2back.show()
		3:
			#4 tela
			$Label.hide()
			i += 1
			$_2back.hide()
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene9.hide()
			$_2cutscene8.show()
			yield(get_tree().create_timer(0.5),"timeout")
			$_2cutscene9.show()
			$Label.show()
			$_2back.show()
			
		4:
			#4 tela com mudança de diálogo
			i += 1
			$Label.text = 'Se você não quer acabar igual a elas, acho melhor você ir embora para sempre da V.tal!! '
			
		5:
			#mudança de cena
			$audio_cutscene2.stop()
			get_tree().change_scene("res://cenas_princiapais/batalha_cobrinho.tscn")

#função para carregar a cutscene e esconder o texto
func _ready():
	$Label.hide()
	_2cutscene(i)

#butão para voltar a cutscene
func _on__2back_released():
	i -= 2
	_2cutscene(i)

#butão para continuar a cutscene
func _on__2continue_released():
	_2cutscene(i)
