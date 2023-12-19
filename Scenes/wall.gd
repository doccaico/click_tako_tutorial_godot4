extends Area2D

func _on_wall_area_entered(area: Area2D) -> void:
	if "Tako" in area.name:
		match name:
			"Top":
				area.direction = (area.direction + Vector2.DOWN) #.normalized()
			"Bottom":
				area.direction = (area.direction + Vector2.UP) #.normalized()
			"Left":
				area.direction = (area.direction + Vector2.RIGHT) #.normalized()
			"Right":
				area.direction = (area.direction + Vector2.LEFT) #.normalized()
