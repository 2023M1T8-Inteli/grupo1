extends Area2D
#leva ele para a proxima cena ao encostar na area
func _on_Area2D2_body_entered(_body:Node):
	get_tree().change_scene("res://cenas_princiapais/batalha_shokinho.tscn")
