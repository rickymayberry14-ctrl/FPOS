extends Node2D

@onready var button: TouchScreenButton = $Button
@onready var Sound: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var area: Area2D = $Area2D

var ON = false

func _physics_process(_delta: float) -> void:
		if Input.is_action_just_pressed("Touch") and ON == true:
			Sound.play()


func _on_area_2d_mouse_entered() -> void:
	ON = true


func _on_area_2d_mouse_exited() -> void:
	ON = false
