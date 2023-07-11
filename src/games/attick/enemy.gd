extends Area2D

func _on_body_entered(body: Node2D) -> void:
	var player := body as Player
	if player:
		player.hp -= 1
		player.animation_player.play("color_rect")
