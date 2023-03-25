extends Node2D

var i = 0

func _2cutscene(n):
	match n:
		0:
			i += 1
			$_2back.hide()
			$_2continue.show()
			$_2cutscene1.show()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			#if Music.som % 2 == 1:
				#$audio_cutscene.play()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene2.show()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene3.show()
			yield(get_tree().create_timer(0.7),"timeout")
			$_2cutscene4.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$_2cutscene5.show()
			$_2back.show()
		1:
			i += 1
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			$_2cutscene6.show()
			$_2back.show()
		2:
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene8.hide()
			$_2cutscene9.hide()
			i += 1
			$_2cutscene7.show()
			$_2back.show()
		3:
			$_2back.hide()
			$_2cutscene1.hide()
			$_2cutscene2.hide()
			$_2cutscene3.hide()
			$_2cutscene4.hide()
			$_2cutscene5.hide()
			$_2cutscene6.hide()
			$_2cutscene7.hide()
			$_2cutscene9.hide()
			$_2cutscene8.show()
			yield(get_tree().create_timer(2.0),"timeout")
			$_2cutscene9.show()
			$_2back.show()
		4:
			#$audio_cutscene.stop()
			get_tree().change_scene("res://cenas_princiapais/top_down_1.tscn")

func _ready():
	_2cutscene(i)

func _on__2back_released():
	i -= 2
	_2cutscene(i)


func _on__2continue_released():
	_2cutscene(i)
