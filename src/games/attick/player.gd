extends PlayGame
var velocity = Vector2.ZERO

func _process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")
	velocity.x = direction * sleep
	velocity.y = direction_y * sleep
	# 移动的距离等于速度乘以时间
	position += velocity * delta
