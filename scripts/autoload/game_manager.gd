extends Node
## Global game manager singleton
## Handles game state, scoring, and global game events

signal game_started
signal game_over
signal score_changed(new_score: int)

enum GameState { MENU, PLAYING, PAUSED, GAME_OVER }

var current_state: GameState = GameState.MENU
var score: int = 0:
	set(value):
		score = value
		score_changed.emit(score)

var current_level: int = 1


func _ready() -> void:
	print("GameManager initialized")


func start_game() -> void:
	current_state = GameState.PLAYING
	score = 0
	current_level = 1
	game_started.emit()


func end_game() -> void:
	current_state = GameState.GAME_OVER
	game_over.emit()


func add_score(points: int) -> void:
	score += points


func pause_game() -> void:
	if current_state == GameState.PLAYING:
		current_state = GameState.PAUSED
		get_tree().paused = true


func resume_game() -> void:
	if current_state == GameState.PAUSED:
		current_state = GameState.PLAYING
		get_tree().paused = false
