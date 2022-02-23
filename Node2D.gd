extends Node2D

var estado = 1
var imagens = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
var notas = [1, 2, 3, 4, 5, 6, 7]

func _ready():
	randomize()
	imagens.shuffle()
	randomize()
	notas.shuffle()

func virar(botao):
	if estado==1:
		get_node("TextureButton"+String(botao)).texture_normal = load("res://texturas/carta branca.jpg")
		
		randomize()
		var tamanhoTemp = randi()%3+3
		for contador in range(tamanhoTemp):
			get_node("TextureRect"+String(contador+1)).texture = load("res://texturas/nota"+String(notas[contador])+".jpg")
		
		randomize()
		notas.shuffle()
		estado=2
		
	elif estado==2:
		get_node("TextureButton"+String(botao)).texture_normal = load("res://texturas/"+String(imagens[botao-1])+".jpg")
		for contador in range(5):
			get_node("TextureRect"+String(contador+1)).texture = null
		estado=3
	else:
		get_node("TextureButton"+String(botao)).texture_normal = load("res://texturas/costas baralho.jpg")
		estado=1
		
func _on_TextureButton_pressed():
	virar(1)
func _on_TextureButton2_pressed():
	virar(2)
func _on_TextureButton3_pressed():
	virar(3)
func _on_TextureButton4_pressed():
	virar(4)
func _on_TextureButton5_pressed():
	virar(5)
func _on_TextureButton6_pressed():
	virar(6)
func _on_TextureButton7_pressed():
	virar(7)
func _on_TextureButton8_pressed():
	virar(8)
func _on_TextureButton9_pressed():
	virar(9)
func _on_TextureButton10_pressed():
	virar(10)
func _on_TextureButton11_pressed():
	virar(11)
func _on_TextureButton12_pressed():
	virar(12)
