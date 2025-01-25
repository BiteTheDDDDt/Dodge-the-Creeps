extends CanvasLayer

# Notifies `Main` node that the button has been pressed
signal start_game

func show_message(text, start_timer):
	$Message.text = text
	$Message.show()
	if start_timer:
		$MessageTimer.start()

func show_game_over():
	show_message("Game Over", true)
	
	await get_tree().create_timer(1.0).timeout
	
	show_message("Dodge the Creeps!", false)
	$StartButton.show()
	
func update_score(score):
	$ScoreLabel.text = str(score)
	
func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()

func _on_message_timer_timeout():
	$Message.hide()
