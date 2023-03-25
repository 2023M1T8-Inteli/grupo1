extends Node2D
#exporta o link do código de ética original da V.tal e define as variáveis
export var ulr = "https://drive.google.com/file/d/1I5PNN1LfHsO-zaPgXp91Ot083TTnGf9a/view?usp=sharing"
var acerto = 0
var vagabunda = 0
var n = 0
var vida = 4
#define as condições inicias para a fase do jogo. Aparece todas as informações iniciais e começa a musica se a pessoa não tirou o som do jogo (se a pessoa tirou o som, ele não toca)
func _ready():
	$botao_pause.hide()
	$RichTextLabel5.clear()
	$RichTextLabel5.add_text('então você voltou fibrinha, quero ver se você consegue responder minhas perguntas.')
	
	$RichTextLabel1.clear()
	$RichTextLabel1.add_text('Não, cada colaborador deve usar seu próprio crachá e passar pelo procedimento padrão de entrada. Isso garante o controle de entrada das pessoas na V.tal.')
	
	$RichTextLabel2.clear()
	$RichTextLabel2.add_text('Sim, porque como eles  trabalham na mesma empresa e estão indo apenas almoçar não há problema em fazer isso. ')
	
	$RichTextLabel3.clear()
	$RichTextLabel3.add_text('Não, afinal, nenhum dos dois precisa utilizar o crachá. Após o horário de almoço eles estarão de volta na empresa.')
	
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

	if Music.som % 2 == 1:
		$musica_batalha.play()
#define a função das perguntas e respostas. A cada match ele troca a posição do botão certo com outro qualquer e troca os textos da fala e das respostas. No ultimo match troca de cena.
func respostas():
	match n:
		1:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button2.position.x = 310
			$Button2.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Sim, porque como há mais de uma pessoa no projeto, delegar as tarefas para outros é necessário para seu desenvolvimento. ')
			$RichTextLabel2.add_text('Sim, sistemas eletrônicos da V.Tal devem ser usados exclusivamente para atividades profissionais, pois em caso de possível desligamento o recolhimento do aparelho será imediato. ')
			$RichTextLabel3.add_text('Não, porque apenas seus familiares têm o direito em saber sua senha do sistema da V.tal ')
			$RichTextLabel4.add_text('Sim, mas isso só pode ser feito por um funcionário de longa data, ou seja, possui mais de 5 anos de empresa.')
			$RichTextLabel5.add_text('Dessa pergunta você não escapa Fibrinha!!! Um colaborador utiliza o computador da V.tal para uso pessoal, seja tanto para estudar quanto guardar fotos no dispositivo. Há algum problema?')

			
		2:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 505
			
			$Button3.position.x = 667
			$Button3.position.y = 413
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Não, porque enquanto a pessoa possuir o equipamento em suas mãos ela pode fazer o que bem entender, afinal, o equipamento é dela. ')
			$RichTextLabel2.add_text('Sim, mas isso só pode ser feito após o colaborador concluir o período de trabalho e os afazeres do dia. Além disso, também precisa estar alinhado com seu chefe.')
			$RichTextLabel3.add_text('Não, somente se for alguém autorizado e que o caso seja discutido previamente com o Compliance da V.tal e com o líder do projeto.')
			$RichTextLabel4.add_text('Não, mas o colaborador tem que concordar em tornar as informações pessoais do dispositivo públicas em que a V.tal tenha acesso liberado.')
			$RichTextLabel5.add_text('Você se acha muito espertinho, né Fibrinha? Essa você não vai acertar nunca: Se uma pessoa do time de um projeto entrar de férias, ela pode compartilhar sua senha do sistema para os outros integrantes?')
			
		3:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('Ele deve interferir imediatamente e expor a pessoa para todos, pois assim, pelo constrangimento nenhum outro colaborador cometerá esse erro. ')
			$RichTextLabel2.add_text('Ele deve pegar o caso e compartilhá-lo em todas as suas redes sociais marcando a V.tal para ela saber do ocorrido. ')
			$RichTextLabel3.add_text('Compartilhar a situação com seu supervisor ou com compliance, podendo ser de forma anônima caso o colaborador se sinta ameaçado.')
			$RichTextLabel4.add_text('Guardar para ele mesmo, afinal, ele não fez nada de errado e apenas presenciou o ocorrido.')
			$RichTextLabel5.add_text('Você não desiste mesmo né Fibrinha!? Acerta essa então: Se um funcionário acha que viu ou está em uma situação de conflito de interesses (pessoal x profissional), o que ele deve fazer?')
			
		4:
			$Button2.show()
			$Button3.show()
			$Button4.show()
			
			$Button1.position.x = 667
			$Button1.position.y = 413
			
			$Button3.position.x = 667
			$Button3.position.y = 505
			
			$RichTextLabel1.clear()
			$RichTextLabel2.clear()
			$RichTextLabel3.clear()
			$RichTextLabel4.clear()
			$RichTextLabel5.clear()
			
			$RichTextLabel1.add_text('A empresa apenas aceitará a relação, caso ambos postem em suas redes sociais que se conheceram na V.tal ')
			$RichTextLabel2.add_text('Cada caso é um caso. Para evitar surpresas em ambas partes, ambos deveriam levar o tema para o compliance, pois assim a melhor decisão para todos será tomada. ')
			$RichTextLabel3.add_text('Todos os casos recebem o mesmo tratamento, ou seja, nenhum relacionamento entre colaboradores é permitido na V.tal ')
			$RichTextLabel4.add_text(' A V.tal aprovaria qualquer relação independentemente das circunstancias e da posição na empresa entre eles.')
			$RichTextLabel5.add_text('Já estou de saco cheio de você Fibrinha!!! Essa é minha pergunta final, você vai errar!!! Existem dois “pombinhos” na V.tal que gostariam de assumir seu relacionamento para a empresa, mesmo atuando na mesma área. A empresa iria aprovar essa relação?')
			
			$musica_batalha.play()
		5:
			get_tree().change_scene("res://cenas_princiapais/cutscene_cobrinho.tscn")

#tira uma vida e esconde o texto que está na posição do botão
func _on_Button2_released():
	if $Button2.position.x == 310 and $Button2.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button2.position.x == 667 and $Button2.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button2.position.x == 667 and $Button2.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button2.position.x == 310 and $Button2.position.y == 505 :
		$RichTextLabel4.hide()
	$Button2.hide()
	vida -= 1
#tira uma vida e esconde o texto que está na posição do botão
func _on_Button3_released():
	if $Button3.position.x == 310 and $Button3.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button3.position.x == 667 and $Button3.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button3.position.x == 667 and $Button3.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button3.position.x == 310 and $Button3.position.y == 505 :
		$RichTextLabel4.hide()
	$Button3.hide()
	vida -= 1
#tira uma vida e esconde o texto que está na posição do botão
func _on_Button4_released():
	if $Button4.position.x == 310 and $Button4.position.y == 413 :
		$RichTextLabel1.hide()
	if $Button4.position.x == 667 and $Button4.position.y == 413 :
		$RichTextLabel2.hide()
	if $Button4.position.x == 667 and $Button4.position.y == 505 :
		$RichTextLabel3.hide()
	if $Button4.position.x == 310 and $Button4.position.y == 505 :
		$RichTextLabel4.hide()
	$Button4.hide()
	vida -= 1

#define a cena para a próxima etapa da fase e roda a próxima etapa da fase
func _on_Button1_released():
	$RichTextLabel4.show()
	$RichTextLabel3.show()
	$RichTextLabel2.show()
	$RichTextLabel1.show()
	n += 1
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
	$RichTextLabel5.add_text('Quero ver se você vai acertar essa pergunta Fibrinha: Dois colegas de trabalho resolvem sair para almoçar, MAS um deles esqueceu seu crachá para passar na catraca. Eles podem usar um único cartão para passar da catraca?')
	
	$botao_pause.show()
	
	$Button1.show()
	$Button2.show()
	$Button3.show()
	$Button4.show()
	
	$RichTextLabel1.show()
	$RichTextLabel2.show()
	$RichTextLabel3.show()
	$RichTextLabel4.show()
