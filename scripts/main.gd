extends Node2D
## Main game scene controller
## Manages the main game loop and coordinates between systems


func _ready() -> void:
	print("Main scene loaded")
	# Connect to GameManager signals if needed
	# GameManager.game_started.connect(_on_game_started)


func _process(_delta: float) -> void:
	pass


# Example signal handler
#func _on_game_started() -> void:
#	print("Game started!")
