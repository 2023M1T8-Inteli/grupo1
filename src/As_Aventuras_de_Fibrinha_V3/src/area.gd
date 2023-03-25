extends Area2D
#caso o corpo entre a animação do elevador é inciada
func _on_area_body_entered(body : Node):
	$"abrindo_portão".play("abrindo")


#caso o corpo saia a animação ao contrario ou seja dele fechando é iniciada
func _on_area_body_exited(body):
	$"abrindo_portão".play("RESET")
