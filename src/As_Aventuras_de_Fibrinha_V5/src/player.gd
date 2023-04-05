extends KinematicBody2D
#definem as variáveis
var velocidade : Vector2 = Vector2()
var direction : Vector2 = Vector2()
var touch_left = false
var touch_right = false
var touch_up = false
var touch_down = false

func read_input():
#Aqui, a velocidade é definida como um novo Vector2 vazio.
	velocidade = Vector2()
#Aqui, verificamos se alguma das teclas de seta ou botões correspondentes estão pressionados. Se estiverem, atualizamos a velocidade e a direção do personagem e iniciamos a animação correspondente.
#Se nenhuma das teclas estiver sendo pressionada, iniciamos a animação "Parado".
	if Input.is_action_pressed("ui_up") or touch_up:
		velocidade.y -= 1
		direction = Vector2(0,-1)
		$AnimationPlayer.play("Pra_Cima")
		
	elif Input.is_action_pressed("ui_down") or touch_down:
		velocidade.y += 1
		direction = Vector2(0,1)
		$AnimationPlayer.play("Pra_Baixo")

	elif Input.is_action_pressed("ui_left") or touch_left:
		velocidade.x -= 1
		direction = Vector2(-1,0)
		$AnimationPlayer.play("Andando_Esquerda") 

	elif Input.is_action_pressed("ui_right") or touch_right:
		velocidade.x += 1
		direction = Vector2(1,0)
		$AnimationPlayer.play("Andando_Direita")
	
	else:
		$AnimationPlayer.play("RESET")
#Aqui, normalizamos a velocidade e, em seguida, usamos a função move_and_slide() para mover o personagem no mundo e lidar com colisões.
	velocidade = velocidade.normalized()
	velocidade = move_and_slide(velocidade * 200)
#A função _physics_process() é chamada a cada quadro e chama a função read_input() para atualizar as entradas do jogador e mover o personagem.
func _physics_process(_delta):	
	read_input()

#define o estado do personagem baseado no touch
func _on_left_pressed():
	touch_left = true

func _on_right_pressed():
	touch_right = true

func _on_up_pressed():
	touch_up = true

func _on_down_pressed():
	touch_down = true

func _on_left_released():
	touch_left = false

func _on_right_released():
	touch_right = false

func _on_up_released():
	touch_up = false

func _on_down_released():
	touch_down = false
