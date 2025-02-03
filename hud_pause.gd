extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_continue_pressed() -> void:
	get_tree().paused = false
	hide()


func _on_button_quit_pressed() -> void:
	get_tree().paused = false
	get_parent().game_over()
	hide()
