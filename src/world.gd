extends Control

# 获取不同的选项
var games := DirAccess.open("res://src/games/").get_directories()
@onready var select := $VBoxContainer/Select
@onready var start := $VBoxContainer/Start
@onready var exit := $VBoxContainer/Exit
const base_url := "res://src/games"

func _on_start_pressed() -> void:
	var item_name = select.get_item_text(select.get_selected_id())
	var url := base_url+"/{0}/{1}.tscn".format([item_name, item_name])
	var err := get_tree().change_scene_to_file(url)
	if err:
		printerr("没有这个场景，加载位于"+url+"的场景失败")
	

func _on_exit_pressed() -> void:
	get_tree().quit()

func _ready() -> void:
	for item in games:
		select.add_item(item)
	select.grab_focus()
	start.pressed.connect(_on_start_pressed)
	exit.connect("pressed", _on_exit_pressed)


func _process(delta) -> void:
	pass


