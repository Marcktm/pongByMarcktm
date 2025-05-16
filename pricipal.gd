extends Node2D

@export var scoreP1 = 0
@export var scoreP2 = 0 

func _on_porteria_player_1_body_entered(body: Node2D) -> void:
	if body.is_in_group("pelota"):
		scoreP2 += 1
		sacoDelMedio()


func _on_porteria_player_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("pelota"):	
		scoreP1 += 1
		sacoDelMedio()

func sacoDelMedio():
	$scorePlayer1.text = str(scoreP1)
	$scorePlayer2.text = str(scoreP2)
	$pelota.reset()
