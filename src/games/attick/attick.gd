extends Control
@onready var hp_name: Label = $HpContainer/HpName
@onready var hp: Label = $HpContainer/Hp
@onready var base_name: Label = $DefContainer/Name
@onready var player: PlayGame = $player

func _process(delta: float) -> void:
	hp.text = str(player.hp)
	base_name.text = player.base_name
