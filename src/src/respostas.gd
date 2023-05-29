extends Node2D
#exporta o link do código de ética original da V.tal e define as variáveis
export var ulr = "https://drive.google.com/file/d/1ogBHPZzFE9jmFpUUr1iCQQSsGiGLfjLo/view"
var acerto = 0
var n = 0
var vida = 4
#define as condições inicias para a fase do jogo. Aparece todas as informações iniciais e começa a musica se a pessoa não tirou o som do jogo (se a pessoa tirou o som, ele não toca)
func _ready():
	$botao_pause.hide()
	$RichTextLabel5.clear()
	$RichTextLabel5.add_text('Fibrinha?!? Como você está aqui!?! O Cobrinho não jogou você pela janela?!? Bom, isso não importa. Eu vou dar um fim em você agora mesmo!!')
	
	$RichTextLabel1.clear()
	$RichTextLabel1.add_text('Não, cada colaborador deve usar seu próprio crachá e passar pelo procedimento padrão de entrada. Isso garante o controle de acesso das pessoas na V.tal.')
	
	$RichTextLabel2.clear()
	$RichTextLabel2.add_text('Sim, porque como eles  trabalham na mesma empresa e estão indo apenas almoçar não há problema em fazer isso. ')
	
	$RichTextLabel3.clear()
	$RichTextLabel3.add_text('Não, afinal, nenhum dos dois precisa utilizar o crachá. Após o horário de almoço eles estarão de volta na empresa.  ')
	
	$RichTextLabel4.clear()
	$RichTextLabel4.add_text('Sim, mas isso só pode ser feito entre funcionários da mesma área, por exemplo, financeiro com financeiro.')
	
	$Button1.position.x = 310
	$Button1.position.y = 413

	$Button2.position.x = 667
	$Button2.position.y = 413

	$Button3.position.x = 667
	$Button3.position.y = 505

	$Button4.position.x = 310
	$Button4.position.y = 505
	
	$Button1.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	
	$botao_acerto1.hide()
	$botao_acerto2.hide()
	$botao_acerto3.hide()
	
	$botao_erro1.hide()
	$botao_erro2.hide()
	$botao_erro3.hide()
	$botao_erro4.hide()
	
	$RichTextLabel1.hide()
	$RichTextLabel2.hide()
	$RichTextLabel3.hide()
	$RichTextLabel4.hide()
	
	$coracao_vazio1.hide()
	$coracao_vazio2.hide()
	$coracao_vazio3.hide()
	$coracao_vazio4.hide()
	
	$continuar.hide()
	$volume.hide()
	$etica.hide()
	$tela_escura.hide()
	$volume_on.hide()
	$volume_off.hide()
	
	$game_over.hide()
	$reiniciar.hide()
	
	$prosseguir.hide()
	$fala_fibrinha.hide()
	$balao_fibrinha.hide()
	
	$botao_fake1.hide()
	$botao_fake2.hide()
	$botao_fake3.hide()
	$botao_fake4.hide()
	
	if Music.som % 2 == 1:
		$musica_batalha.play()
#define a função das perguntas e respostas. A cada match ele troca a posição do botão certo com outro qualquer e troca os textos da fala e das respostas. No ultimo match troca de cena.
func respostas():
	match n:
		1:
			#cena da fala de Fibrinha
			$RichTextLabel5.hide()
			$Button5.hide()
			
			$fala_fibrinha.show()
			$balao_fibrinha.show()
		2:
			#fala final do shokinho
			$balao_fibrinha.hide()
			$fala_fibrinha.hide()
			
			$RichTextLabel5.show()
			$Button5.show()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Então vamos começar!!')
			
		3:
			#cena de perguntas e respostas 1
			$botao_pause.show()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$prosseguir.hide()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Dois colegas de trabalho resolvem sair para almoçar, MAS um deles esqueceu seu crachá para passar na catraca. Eles podem usar um único cartão para passar da catraca?')
			
		4:
			#cena de diálogo entre perguntas 1
			$botao_pause.hide()
			$prosseguir.show()
			
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Você se acha muito espertinho, né Fibrinha? Essa você não vai acertar nunca:')
		5:
			#cena de perguntas e respostas 2
			$botao_pause.show()
			$prosseguir.hide()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			#muda a posição da resposta certa
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button2.position.x = 310
			$Button2.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Sim, porque como há mais de uma pessoa no projeto, delegar as tarefas para outros é necessário para seu desenvolvimento.')
			$RichTextLabel2.add_text('Não, somente se for alguém autorizado e que o caso seja discutido previamente com a empresa e com o líder do projeto.')
			$RichTextLabel3.add_text('Não, porque apenas seus familiares têm o direito em saber sua senha do sistema da V.tal')
			$RichTextLabel4.add_text('Sim, mas isso só pode ser feito por um funcionário de longa data, ou seja, possui mais de 5 anos de empresa.')
			$RichTextLabel5.add_text('Se uma pessoa do time de um projeto entrar de férias, ela pode compartilhar sua senha do sistema para os outros integrantes?')
		
		6:
			#cena de diálogo entre perguntas 2
			$botao_pause.hide()
			$prosseguir.show()
			
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Dessa pergunta você não escapa Fibrinha!!!')
			
		7:
			#cena de perguntas e respostas 3
			$botao_pause.show()
			$prosseguir.hide()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			#muda a posição da resposta certa
			$Button1.position.x = 667
			$Button1.position.y = 505
			
			$Button3.position.x = 667
			$Button3.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Sim, mas isso só pode ser feito após o colaborador concluir o período de trabalho e os afazeres do dia. Além disso, também precisa estar alinhado com seu chefe.')
			$RichTextLabel2.add_text('Não, mas o colaborador tem que concordar em tornar as informações pessoais do dispositivo públicas em que a V.tal tenha acesso liberado.')
			$RichTextLabel3.add_text('Sim, eletrônicos da V.Tal devem ser usados apenas para atividades profissionais, em caso de possível desligamento o recolhimento do aparelho poderá ser imediato. ')
			$RichTextLabel4.add_text('Não, porque enquanto a pessoa possuir o equipamento em suas mãos ela pode fazer o que bem entender, afinal, o equipamento é dela. ')
			$RichTextLabel5.add_text('Um colaborador utiliza o computador da V.tal para uso pessoal, seja tanto para estudar quanto guardar fotos no dispositivo. Há algum problema?')
			
		8:
			#cena de diálogo ente perguntas 3
			$botao_pause.hide()
			$prosseguir.show()
			
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Você não desiste mesmo né Fibrinha!? Acerta essa então:')
		9:
			#cena de perguntas e respostas 4
			$botao_pause.show()
			$prosseguir.hide()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Ele deve pegar o caso e compartilhá-lo em todas as suas redes sociais marcando a V.tal para ela saber do ocorrido.')
			$RichTextLabel2.add_text('Guardar para ele mesmo e não conversar com os colegas para orientá-los a procurar a área de compliance')
			$RichTextLabel3.add_text('Compartilhar a situação com seu supervisor ou com compliance, podendo ser de fora anônima caso o colaborador se sinta ameaçado.')
			$RichTextLabel4.add_text('Ele deve interferir imediatamente e expor a pessoa para todos, pois assim, pelo constrangimento nenhum outro colaborador cometerá esse erro.')
			$RichTextLabel5.add_text('Se um funcionário acha que viu ou está em uma situação de conflito de interesses (pessoal x profissional), o que ele deve fazer? ')
			
		10:
			#cena de diálogo entre perguntas 4
			$botao_pause.hide()
			$prosseguir.show()
			
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Já estou de saco cheio de você Fibrinha!!! Essa é minha pergunta final, você vai errar!!!')
		11:
			#cena de perguntas e respostas 5
			$botao_pause.show()
			$prosseguir.hide()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			#troca de posição a resposta certa
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button3.position.x = 667
			$Button3.position.y = 505
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('A empresa apenas aceitará a relação, caso ambos postem em suas redes sociais que se conheceram na V.tal')
			$RichTextLabel2.add_text('Cada caso é um caso. Para evitar surpresas em ambas partes, ambos deveriam levar o tema para o compliance, pois assim a melhor decisão para todos será tomada.')
			$RichTextLabel3.add_text('Todos os casos recebem o mesmo tratamento, ou seja, nenhum relacionamento entre colaboradores é permitido na V.tal')
			$RichTextLabel4.add_text('A V.tal aprovaria qualquer relação independentemente das circunstâncias e da posição na empresa entre eles.')
			$RichTextLabel5.add_text('Existem dois “pombinhos” na V.tal que gostariam de assumir seu relacionamento para a empresa, mesmo atuando na mesma área. A empresa iria aprovar essa relação?')
			
		12:
			#muda de cena
			get_tree().change_scene("res://cenas_princiapais/cutscene_cobrinho.tscn")

#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button2_released():
	if $Button2.position.x == 310 and $Button2.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel2.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro1.hide()
		$RichTextLabel1.hide()
		
	if $Button2.position.x == 667 and $Button2.position.y == 413 :
		$botao_erro2.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake1.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake1.hide()
		$botao_fake3.hide()
		$botao_erro2.hide()
		$RichTextLabel2.hide()
		
	if $Button2.position.x == 667 and $Button2.position.y == 505 :
		$botao_erro3.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake1.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel2.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake1.hide()
		$botao_erro3.hide()
		$RichTextLabel3.hide()
		
	if $Button2.position.x == 310 and $Button2.position.y == 505 :
		$botao_erro4.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake1.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel2.show()
		$botao_fake1.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro4.hide()
		$RichTextLabel4.hide()
	$Button2.hide()
	vida -= 1
	
#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button3_released():
	if $Button3.position.x == 310 and $Button3.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel2.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro1.hide()
		$RichTextLabel1.hide()
		
	if $Button3.position.x == 667 and $Button3.position.y == 413 :
		$botao_erro2.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake1.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake1.hide()
		$botao_fake3.hide()
		$botao_erro2.hide()
		$RichTextLabel2.hide()
		
	if $Button3.position.x == 667 and $Button3.position.y == 505 :
		$botao_erro3.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake1.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel2.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake1.hide()
		$botao_erro3.hide()
		$RichTextLabel3.hide()
		
	if $Button3.position.x == 310 and $Button3.position.y == 505 :
		$botao_erro4.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake1.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel2.show()
		$botao_fake1.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro4.hide()
		$RichTextLabel4.hide()
	$Button3.hide()
	vida -= 1
	
#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button4_released():
	if $Button4.position.x == 310 and $Button4.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel2.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro1.hide()
		$RichTextLabel1.hide()
		
	if $Button4.position.x == 667 and $Button4.position.y == 413 :
		$botao_erro2.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake1.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$botao_fake4.hide()
		$botao_fake1.hide()
		$botao_fake3.hide()
		$botao_erro2.hide()
		$RichTextLabel2.hide()
		
	if $Button4.position.x == 667 and $Button4.position.y == 505 :
		$botao_erro3.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake4.show()
		$botao_fake2.show()
		$botao_fake1.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel2.show()
		$RichTextLabel4.show()
		$botao_fake4.hide()
		$botao_fake2.hide()
		$botao_fake1.hide()
		$botao_erro3.hide()
		$RichTextLabel3.hide()
		
	if $Button4.position.x == 310 and $Button4.position.y == 505 :
		$botao_erro4.show()
		$AnimationPlayer.play("tremer1")
		$botao_fake1.show()
		$botao_fake2.show()
		$botao_fake3.show()
		$Button1.hide()
		$Button2.hide()
		$Button3.hide()
		$Button4.hide()
		yield(get_tree().create_timer(0.5),"timeout")
		$Button1.show()
		$Button2.show()
		$Button3.show()
		$Button4.show()
		$RichTextLabel1.show()
		$RichTextLabel3.show()
		$RichTextLabel2.show()
		$botao_fake1.hide()
		$botao_fake2.hide()
		$botao_fake3.hide()
		$botao_erro4.hide()
		$RichTextLabel4.hide()
	$Button4.hide()
	vida -= 1

#define a cena para a próxima etapa da fase e roda a próxima etapa da fase
#não deixa o jogador escolher mais de uma opção
func _on_Button1_released():
	$Button1.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	
	$RichTextLabel1.show()
	$RichTextLabel2.show()
	$RichTextLabel3.show()
	$RichTextLabel4.show()
	
	$botao_fake1.show()
	$botao_fake2.show()
	$botao_fake3.show()
	$botao_fake4.show()
	n += 1
	if n == 4:
		$botao_acerto1.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto1.hide()
	if n == 6:
		$botao_acerto2.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto2.hide()
	if n == 8:
		$botao_acerto3.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto3.hide()
	if n == 10:
		$botao_acerto3.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto3.hide()
	if n == 12:
		$botao_acerto2.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto2.hide()
	$botao_fake1.hide()
	$botao_fake2.hide()
	$botao_fake3.hide()
	$botao_fake4.hide()
	respostas()
	
#aparece o menu de pause com todos os botões e esconde os textos da fase
func _on_botao_pause_released():
	$continuar.show()
	$volume.show()
	$etica.show()
	$tela_escura.show()
	
	if Music.som % 2 == 0:
		$volume_on.hide()
		$volume_off.show()
	elif Music.som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
	
	$Button1.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	
	$RichTextLabel1.hide()
	$RichTextLabel2.hide()
	$RichTextLabel3.hide()
	$RichTextLabel4.hide()
#volta para a fase, escondendo o menu de pause
func _on_continuar_released():
	$continuar.hide()
	$volume.hide()
	$etica.hide()
	$tela_escura.hide()
	
	$Button1.show()
	$Button2.show()
	$Button3.show()
	$Button4.show()
	
	$RichTextLabel1.show()
	$RichTextLabel2.show()
	$RichTextLabel3.show()
	$RichTextLabel4.show()
	
	$volume_off.hide()
	$volume_on.hide()
#desliga e liga o som
func _on_volume_released():
	Music.som += 1
	if Music.som % 2 == 0:
		$volume_on.hide()
		$volume_off.show()
		$musica_batalha.stop()
	elif Music.som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
		$musica_batalha.play()
#mantem os corações de vida atualizados e se chegar na vida 0 ele aparece a tela de "game over"
func _process(_delta):
	if vida == 3:
		$coracao4.hide()
		$coracao_vazio4.show()
	elif vida == 2:
		$coracao3.hide()
		$coracao_vazio3.show()
	elif vida == 1:
		$coracao2.hide()
		$coracao_vazio2.show()
	elif vida == 0:
		$coracao1.hide()
		$coracao_vazio1.show()
		$game_over.show()
		$reiniciar.show()
#reinicia a fase do zero
func _on_reiniciar_released():
	get_tree().change_scene("res://cenas_princiapais/batalha_shokinho.tscn")
#abre a página do código de ética original da V.tal
func _on_etica_released():
	OS.shell_open(ulr)
#botão para começar a fase depois da fala do inimigo

func _on_contiaire_released():
	$contiaire.hide()
	
	$RichTextLabel5.clear()
	$RichTextLabel5.add_text('Você não tem espaço aqui na V.tal! Você não sabe nada sobre o Código de Ética!! Já que você quis nos ensinar sobre o Código, duvido você acertas as minhas perguntas!!')
	$prosseguir.show()

#botão para ir do diálogo entre perguntas para a pergunta e respostas
func _on_prosseguir_released():
	n += 1
	respostas()
