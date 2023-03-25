extends Area2D

func _on_Area2D_body_entered(_body : Node):
	$AnimationPlayer.play("abre_elevador")


func _on_Area2D_body_exited(_body : Node):
	$AnimationPlayer.play("fechando")
