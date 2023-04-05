extends Area2D
#animação de abrir o elevador quando o jogador chegar perto
func _on_Area2D_body_entered(_body : Node):
	$AnimationPlayer.play("abre_elevador")

#animação de fechar o elevador quando o jogador sair de perto
func _on_Area2D_body_exited(_body : Node):
	$AnimationPlayer.play("fechando")
