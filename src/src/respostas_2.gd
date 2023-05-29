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
	$RichTextLabel5.add_text('Agora, se você quiser me desafiar, fique a vontade.. Mas tenho certeza que você não será capaz de responder minhas perguntas!!')
	
	$RichTextLabel1.clear()
	$RichTextLabel1.add_text('Não apoia. A V.tal acredita que essa prática coloca os interesses próprios do indivíduo à cima dos interesses empresa.')
	
	$RichTextLabel2.clear()
	$RichTextLabel2.add_text('Sim, apoia. A indicação de parentes é uma prática aceitável, porém a condição de parentesco deve ser informada na área de Pessoas e Cultura da V.tal.')
	
	$RichTextLabel3.clear()
	$RichTextLabel3.add_text(' Sim, apoia. A V.tal ao contratar um colaborador, acredita que toda sua família pode trabalhar para empresa sem precisar de uma indicação. ')
	
	$RichTextLabel4.clear()
	$RichTextLabel4.add_text('Não apoia. A V.tal acredita que questões pessoais podem ser levadas ao ambiente de trabalho afetando o desempenho de todo setor. ')
	
	$Button1.position.x = 667
	$Button1.position.y = 413

	$Button2.position.x = 310
	$Button2.position.y = 413

	$Button3.position.x = 667
	$Button3.position.y = 505

	$Button4.position.x = 310
	$Button4.position.y = 505
	
	$Button1.hide()
	$Button2.hide()
	$Button3.hide()
	$Button4.hide()
	
	$botao_fake1.hide()
	$botao_fake2.hide()
	$botao_fake3.hide()
	$botao_fake4.hide()
	
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
	
	$balao_fibrinha.hide()
	$fala_fibrinha.hide()
	
	if Music.som % 2 == 1:
		$musica_batalha_2.play()
#define a função das perguntas e respostas. A cada match ele troca a posição do botão certo com outro qualquer e troca os textos da fala e das respostas. No ultimo match troca de cena.
func respostas():
	match n:
		0:
			#define a cena da fala de fibrinha
			$RichTextLabel5.hide()
			$Button5.hide()
			
			$balao_fibrinha.show()
			$fala_fibrinha.show()
			
			$prosseguir.show()
			
		1:
			#define a cena e a fala do cobrinho
			$balao_fibrinha.hide()
			$fala_fibrinha.hide()
			
			$RichTextLabel5.show()
			$Button5.show()
			
			$RichTextLabel5.clear()
			$RichTextLabel5.add_text('Isso será divertido, "Muahahahahahaha"!!!')
		2:
			#cena perguntas e respostas 1
			$botao_pause.show()
			
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			$RichTextLabel5.clear()
			
			$prosseguir.hide()
			
			$RichTextLabel5.add_text('Primeira pergunta: As pessoas adoram indicar familiares para as empresas e trabalhar juntos. Será que a V.tal apoia essa prática?!? ')
			
		3:
			#cena entre perguntas 1
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			$RichTextLabel5.clear()
			
			$botao_pause.hide()
			$prosseguir.show()
			
			$RichTextLabel5.add_text('Estamos apenas começando Fibrinha!!! Já que você sabe tanto de questões familiares, aqui vai outra pergunta: ')
		4:
			#cena de perguntas e respostas 2
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$botao_pause.show()
			$prosseguir.hide()
			
			#troca a posição do butão certo
			$Button1.position.x = 310
			$Button1.position.y = 505
			
			$Button4.position.x = 667
			$Button4.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Sim, porém deve ser informado para a empresa e o processo padrão de contratação da V.tal não será necessário. ')
			$RichTextLabel2.add_text('Sim, pois a V.tal acredita que seus colaboradores optariam por aquilo que seria mais benéfico para empresa e não pelo interesse pessoal. ')
			$RichTextLabel3.add_text('Não, a V.tal não permite que nenhum colaborador contrate o serviço atrelado a parentes independentemente da situação. ')
			$RichTextLabel4.add_text('Não, mesmo que seja realmente a melhor opção disponível no mercado, deve ser informado para a empresa. O processo padrão de contratação da V.tal ocorrerá normalmente. ')
			$RichTextLabel5.add_text('Um colaborador pode contratar o serviço de parentes de forma direta sem consultar a empresa?!? ')

		5:
			#cena entre perguntas 2
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			$RichTextLabel5.clear()
			
			$botao_pause.hide()
			$prosseguir.show()
			
			$RichTextLabel5.add_text('Você está apenas com sorte Fibrinha!!! SORTE!!! Agora você vai errar com certeza!!!')
			
		6:
			#cena de perguntas e respostas 3
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$botao_pause.show()
			$prosseguir.hide()
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Não. Independente do cargo que a pessoa ocupe, a V.tal acredita que esse tipo de prática irá afetar diretamente o desempenho de trabalho do colaborador.')
			$RichTextLabel2.add_text(' Sim, pois a V.tal acredita que seus colaboradores devem buscar por conhecimentos fora da empresa, porém não podem ser remunerados. ')
			$RichTextLabel3.add_text('Não, a V.tal não permite que nenhum colaborador realize trabalhos fora da empresa devido ao termo de confidencialidade entre empresa-colaborador. ')
			$RichTextLabel4.add_text('Sim, a V.tal não proíbe essas ações, mas essas atividades não podem ser realizadas no horário de trabalho e nem concorrerem com as atividades realizadas pela V.tal.')
			$RichTextLabel5.add_text('Sabemos que as pessoas, quando possível, querem ganhar um dinheiro extra. Então, um empregado resolve dar aulas após o seu expediente. A V.tal irá permitir?!?')
			
		7:
			#cena entre perguntas 3
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			$RichTextLabel5.clear()
			
			$botao_pause.hide()
			$prosseguir.show()
			
			$RichTextLabel5.add_text('Tenho que admitir, até que você sabe alguma coisa sobre o Código de Ética!!! Mas agora será seu fim!! Se prepare para minha pergunta final.  Você nunca irá acertar ela "Muahahahahahaha"!!! Você sumirá da V.tal para sempre!!!')
		8:
			#cena de perguntas e respostas 4
			$Button1.show()
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.show()
			$RichTextLabel2.show()
			$RichTextLabel3.show()
			$RichTextLabel4.show()
			
			$botao_pause.show()
			$prosseguir.hide()
			
			#troca a posição do butão certo
			$Button1.position.x = 310
			$Button1.position.y = 413
			
			$Button2.position.x = 310
			$Button2.position.y = 505
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Ele não pode coletar, armazenar, compartilhar, ou realizar qualquer outra forma de tratamento de informações sensíveis sem se certificar de estar alinhado com diretrizes da V.tal.')
			$RichTextLabel2.add_text('Ele tem que deixar todos os documentos da V.tal espalhados em diferentes computadores, pois teria como acessá-los caso perca o computador que usa')
			$RichTextLabel3.add_text('Ele pode comentar as informações confidencias apenas com sua família, já que eles não possuem nenhum vínculo com a empresa. ')
			$RichTextLabel4.add_text('Ele  pode coletar, armazenar, compartilhar, ou realizar qualquer outra forma de tratamento de informações sensíveis sem se certificar de estar alinhado com diretrizes da V.tal.')
			$RichTextLabel5.add_text('Joãozinho, funcionário de longa data, possui informações valiosíssimas e confidenciais da empresa. Então, Fibrinha, quais são os cuidados que ele deve ter com esse tipo de informação?!? ')
			
		9:
			#fala final do cobrinho
			$Button1.hide()
			$Button2.hide()
			$Button3.hide()
			$Button4.hide()
			
			$RichTextLabel1.hide()
			$RichTextLabel2.hide()
			$RichTextLabel3.hide()
			$RichTextLabel4.hide()
			$RichTextLabel5.clear()
			
			$botao_pause.hide()
			$prosseguir.show()
			
			$RichTextLabel5.add_text('Fibrinhaaaaa, nãooooo, você me deroutou….')
		10:
			#muda a cena 
			get_tree().change_scene("res://cenas_princiapais/certificado.tscn")

#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button2_released():
	if $Button2.position.x == 310 and $Button2.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
	vida -= 2
	
#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button3_released():
	if $Button3.position.x == 310 and $Button3.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
	vida -= 2
	
#tira uma vida e esconde o texto que está na posição do botão
#não deixa o jogador escolher mais de uma opção
func _on_Button4_released():
	if $Button4.position.x == 310 and $Button4.position.y == 413 :
		$botao_erro1.show()
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
		$AnimationPlayer.play("tremer")
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
	vida -= 2

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
	if n == 3:
		$botao_acerto2.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto2.hide()
	if n == 5:
		$botao_acerto3.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto3.hide()
	if n == 7:
		$botao_acerto3.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto3.hide()
	if n == 9:
		$botao_acerto1.show()
		yield(get_tree().create_timer(0.5),"timeout")
		$botao_acerto1.hide()
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
		$musica_batalha_2.stop()
	elif Music.som %2 != 0:
		$volume_off.hide()
		$volume_on.show()
		$musica_batalha_2.play()
#mantem os corações de vida atualizados e se chegar na vida 0 ele aparece a tela de "game over"
func _process(_delta):
	if vida == 2:
		$coracao3.hide()
		$coracao_vazio3.show()
		$coracao4.hide()
		$coracao_vazio4.show()

	elif vida == 0:
		$coracao1.hide()
		$coracao_vazio1.show()
		$coracao2.hide()
		$coracao_vazio2.show()
		$game_over.show()
		$reiniciar.show()
#reinicia a fase do zero
func _on_reiniciar_released():
	get_tree().change_scene("res://cenas_princiapais/batalha_cobrinho.tscn")
#abre a página do código de ética original da V.tal
func _on_etica_released():
	OS.shell_open(ulr)
#botão para começar a fase depois da fala do inimigo
func _on_contiaire_released():
	$contiaire.hide()
	respostas()

#butão para continuar a fase
func _on_prosseguir_released():
	n += 1
	respostas()
