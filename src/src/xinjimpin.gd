extends Node2D
#define a variavel para controlar as falas do personagem wifi
var falas = 0
#se a musica for impar começa a tocar e começa o texto do personagem wifi
func _ready():
	if Music.som % 2 == 1:
		$audio_cena.play()
	$HUD.hide()
	$RichTextLabel.clear()
	$RichTextLabel.add_text('Fibrinha!! Fibrinha!! Que bom ver você já em pé !! Soube que a sua queda do prédio foi grande!!')
	
#continua o texto do personagem wifi
func _on_TouchScreenButton_released():
	falas += 1
	if falas == 1:
		$RichTextLabel.clear()
		$RichTextLabel.add_text('Isso é um alívio, porque não há mais tempo a perder !! Você precisa voltar ao prédio da V.tal agora mesmo.')
	if falas == 2:
		$RichTextLabel.clear()
		$RichTextLabel.add_text('Você deve ir lá e corrigir as condutas do Choquinho e do Cobrinho para mostrar aos colaboradores como agir de acordo com o Código de Ética. Porém, essa não é uma tarefa fácil.')
	if falas == 3:
		$RichTextLabel.clear()
		$RichTextLabel.add_text('Choquinho e Cobrinho elaboraram perguntas que vão testar seus conhecimentos e se você não respondê-las corretamente, o mau exemplo de Choquinho e Cobrinho irá se espalhar na V.tal.')
	if falas == 4:
		$RichTextLabel.clear()
		$RichTextLabel.add_text('Por isso Fibrinha, não só eu mas toda V.tal conta com sua ajuda para restabelecer as condutas positivas na empresa. Boa Sorte!!')
	if falas == 5:
		#começa a fase de mundo aberto
		$wifi.hide()
		$tela_nadave.hide()
		$HUD.show()
		$TouchScreenButton.hide()
		$RichTextLabel.hide()
