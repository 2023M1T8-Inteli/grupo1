extends Node2D
#define o link do código de ética para ser usado no botão
export var ulr = "https://drive.google.com/file/d/1ogBHPZzFE9jmFpUUr1iCQQSsGiGLfjLo/view"
#define a variavel do match da cutscene para começar no match 0
var i = 0
#esconde todas as sprites das cutscenes e os botões que controlam a cutscene
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
	$back.hide()
	
	$Choquinho1.clear()
	$Cobrinho1.clear()
	$Fibrinha2.clear()
	$Fibrinha3.clear()
	$Fibrinha4.clear()
	$Cobrinho4.clear()
	$Cobrinho5.clear()
	$Fibrinha6.clear()
	$Fibrinha7.clear()
	$Cobrinho8.clear()
	
#função match que define todos os passos da cutscene
func cutscene(n):
	match n:
#adiciona 1 no i para na proxima vez que rodar ser a proxima etapa da cutscene e esconde todas as sprites da cutscene e mostra a sprite 1 da cutscene, e depois a sprite 2 e 3 da cutscene com um timer de 2 secundos cada, respectivamente
		0:
			#cena 1 
			i += 1
			$back.hide()
			$Background.hide()
			$Weather.hide()
			$butao_opcoes.hide()
			$Butao_Start.hide()
			$Audio_chuva.stop()
			$cutscene1.show()
			$continue.show()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			
			$Choquinho1.show()
			$Cobrinho1.show()
			
			$Choquinho1.clear()
			$Cobrinho1.clear()
			$Fibrinha2.clear()
			$Fibrinha3.clear()
			$Fibrinha4.clear()
			$Cobrinho4.clear()
			$Cobrinho5.clear()
			$Fibrinha6.clear()
			$Fibrinha7.clear()
			$Cobrinho8.clear()
			
			if Music.som % 2 == 1:
				$audio_cutscene.play()
			#adiciona o texto das cutscenes e faz elas aparecerem com um intervalo de 1 segundo
			$Choquinho1.add_text("Ontem foi incrível! O camarote que recebi foi o melhor que já fui na minha vida!")
			$Cobrinho1.add_text("Animal! Os presentes que a gente recebe são sempre os melhores!")
			
			yield(get_tree().create_timer(1.0),"timeout")
			$cutscene2.show()
			$Fibrinha2.add_text("Mas a gente não pode aceitar os presentes que nos mandam….")
			
			yield(get_tree().create_timer(1.0),"timeout")
			$cutscene3.show()
			$Fibrinha3.add_text("Se o presente passar de 100 dólares, temos que agradecer e devolver o presente!")
		1:
#adiciona 1 no i para na proxima vez que rodar ser a proxima etapa da cutscene e esconde todas as sprites da cutscene e mostra a sprite 4 da cutscene, e depois a sprite 4 e 5 da cutscene com um timer de 2 secundos cada, respectivamente
			i += 1
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			$cutscene7.hide()
			$cutscene8.hide()
			
			$Choquinho1.clear()
			$Cobrinho1.clear()
			$Fibrinha2.clear()
			$Fibrinha3.clear()
			$Fibrinha4.clear()
			$Cobrinho4.clear()
			$Cobrinho5.clear()
			$Fibrinha6.clear()
			$Fibrinha7.clear()
			$Cobrinho8.clear()
			
			$cutscene4.show()
			
			#adiciona o texto das cutscenes e faz elas aparecerem com um intervalo de 1 segundo
			$Fibrinha4.add_text("OK?")
			$Cobrinho4.add_text("Você não sabe de nada. Não importa se a V.Tal não permite!")
			
			$back.hide()
			yield(get_tree().create_timer(1.0),"timeout")
			$cutscene5.show()
			$Cobrinho5.add_text("E quer saber de uma coisa? Suma daqui agora!!!")
			yield(get_tree().create_timer(1.0),"timeout")
			$cutscene6.show()
			$Fibrinha6.add_text("AAAAHHHH!!!")
			$back.show()
			
			
		2:
#adiciona 1 no i para na proxima vez que rodar ser a proxima etapa da cutscene e esconde todas as sprites da cutscene e mostra a sprite 7 da cutscene, e depois a sprite 8 da cuscene  com um timer de 1.5 secundos
			$back.hide()
			$cutscene1.hide()
			$cutscene2.hide()
			$cutscene3.hide()
			$cutscene4.hide()
			$cutscene5.hide()
			$cutscene6.hide()
			
			$Choquinho1.clear()
			$Cobrinho1.clear()
			$Fibrinha2.clear()
			$Fibrinha3.clear()
			$Fibrinha4.clear()
			$Cobrinho4.clear()
			$Cobrinho5.clear()
			$Fibrinha6.clear()
			$Fibrinha7.clear()
			$Cobrinho8.clear()
			
			i += 1
			$cutscene7.show()
			#adiciona o texto das cutscenes e faz elas aparecerem com um intervalo de 1 segundo
			$Fibrinha7.add_text("Urgh…")
			yield(get_tree().create_timer(1.0),"timeout")
			$cutscene8.show()
			$Cobrinho8.add_text("humph!")
			$back.show()
		3:
#para a musica da cutscene e muda de cena
			$audio_cutscene.stop()
			get_tree().change_scene("res://cenas_princiapais/top_down_1.tscn")
#quando aperta o botão start carrega o match 0 da cutscene com um timer de 0.3 segundos
func _on_Butao_Start_released():
	yield(get_tree().create_timer(0.3),"timeout")
	cutscene(i)
#roda a proxima etapa da cutscene
func _on_continue_pressed():
	cutscene(i)
#aparece todas as opções do jogo e verifica se a musica está tocando ou não para aparecer a sprite certa da musica
func _on_back_pressed():
	i -= 2
	cutscene(i)
#aparece todas as opções do jogo e verifica se a musica está tocando ou não para aparecer a sprite certa da musica
func _on_butao_opcoes_released():
	$butao_opcoes.hide()
	$Butao_Start.hide()
	
	if Music.som % 2 == 0: 
		$volume_on.hide()
		$volume_off.show()
	elif Music.som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
	
	$butao_continuar.show()
	$butao_volume.show()
	$butao_codigo_etica.show()
#esconde o menu de opções e volta na tela inicial
func _on_butao_continuar_released():
	$butao_continuar.hide()
	$butao_volume.hide()
	$butao_codigo_etica.hide()
	$volume_off.hide()
	$volume_on.hide()
	
	$Butao_Start.show()
	$butao_opcoes.show()
#desliga e liga o som do jogo usando a variavel global som
func _on_butao_volume_released():
	Music.som += 1
	if Music.som % 2 == 0:
		$volume_on.hide()
		$volume_off.show()
		$Audio_chuva.stop()
	elif Music.som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
		$Audio_chuva.play()
#abre a página do código de ética original da V.tal
func _on_butao_codigo_etica_released():
	OS.shell_open(ulr)
