extends Node2D
#exporta as variáveis
export (String, 'clear', 'rain') var weatherType = 'sun'
export (float, -1, 1) var wind = 0
export (float, 0, 1) var size = 0.3
export (int, 100, 3000) var amount = 1500
export (float, 0, 1) var light = 1
export (float, 0, 1) var rain_darkness = 0.3
export (float, 1, 10) var lightChangeTime = 2
export (bool) var delayWeatherChange = true
export (float, 1, 300) var weatherChangeTime = 2
var nightColor: Color = Color.white
# cria as variaveis
onready var rain = $Rain
onready var darkness = $Darkness
onready var tween = $Tween
#faz com que ignore as ultimas mudanças no tempo
var last_control: Control
var last_amount: int
#posiciona o tempo no meio da tela e define a sua largura
func _ready() -> void:
	change_weather()
	darkness_position()
	position = get_viewport_transform().get_origin() + Vector2(get_viewport_rect().size.x / 2, 0)
	rain.process_material.emission_box_extents.x = get_viewport_rect().size.x * 2
#define os tempos, se está chovendo ou se está limpo.
func change_weather():
	
	#espera a mudança de tempo para escurecer a tela
	if weatherType == 'clear':
		apply_rain_settings()
		if delayWeatherChange: yield(tween, "tween_completed")
		change_light(nightColor.darkened(light))
	if weatherType == 'rain':
		
		#escurece o dia  e da delay na luz para começar a chover
		change_light(nightColor.darkened(light - rain_darkness * size))
		if delayWeatherChange: yield(tween, "tween_completed")
		change_amount(rain, amount)
		apply_rain_settings()
		rain.emitting = true
		
	else: rain.emitting = false
		
	#checagem de mudança de tempo para manter a quantidade
	last_amount = amount
func change_light(new_color: Color):
	
	# animação de escurecimento de tela
	tween.interpolate_property(darkness, "color",
	darkness.color, new_color, lightChangeTime,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
func apply_rain_settings():
	
	#tamanho da chuva
	change_size(rain, size)
	
	# setting da chuva com vento, definindo sua velocidade e direção
	change_wind_speed(rain, 0.5 + abs(wind) / 2 + size / 2)
	change_wind_direction(rain, wind)
	rain.process_material.gravity.x = 200 * wind
#define a mudança de tamanho do tempo
func change_size(weather, new_size):
	
	tween.interpolate_property(weather, "process_material:anim_offset",
	weather.process_material.anim_offset, new_size, weatherChangeTime,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
#define a mudança da quantidade de particulas do tempo
func change_amount(weather, new_amount):
	
	if last_amount != amount:
		if weather.emitting == true: weather.preprocess = weather.lifetime * 2
		weather.amount = amount
	else: weather.preprocess = 0
#determina a direção do vento
func change_wind_direction(weather, new_wind):
	
	tween.interpolate_property(weather, "process_material:direction:x",
	weather.process_material.direction.x, new_wind, weatherChangeTime,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
#determina a velocidade que caem as partículas
func change_wind_speed(weather, new_speed):
	
	tween.interpolate_property(weather, "speed_scale",
	weather.speed_scale, new_speed, weatherChangeTime,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
#define o tamanho e onde a escuridão estará na tela
func darkness_position():
	
	darkness.rect_size = get_viewport_rect().size * 4
	darkness.rect_position = get_viewport_rect().position - Vector2(get_viewport_rect().size.x*2, get_viewport_rect().size.y)
