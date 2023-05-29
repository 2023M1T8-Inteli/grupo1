extends Area2D
#caso o corpo entre nessa area ele é levado para a proxima cena
func _on_Area2D_body_entered(body : Node):
	get_tree().change_scene("res://cenas_princiapais/Cena_corredor.tscn")
