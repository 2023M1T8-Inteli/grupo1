extends Area2D
#caso o corpo entre a animação do elevador abrindo é iniciada
func _on_Area2D_body_entered(_body : Node):
	$AnimationPlayer.play("abre_elevador")
#caso o corpo saia a animação do elevador fechando é iniciada
func _on_Area2D_body_exited(_body : Node):
	$AnimationPlayer.play("fechando")
