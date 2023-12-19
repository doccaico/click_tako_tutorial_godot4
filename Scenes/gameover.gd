extends Label

@onready var root = get_node("/root/ClickTako")

func _ready() -> void:
	hide()


func _process(_delta: float) -> void:
	var count = 0
	for child in root.get_children():
		if "Tako" in child.name:
			count += 1
	if count == 0:
		show()
