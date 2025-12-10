extends Node2D

@onready var start: Sprite2D = $Start
@onready var area: Area2D = $Start/Area2D
@onready var finish: Sprite2D = $Finish


var ON = false



func _physics_process(_delta: float) -> void:
	if ON == true and Input.is_action_pressed("Touch"):
		start.global_position.x = get_viewport().get_mouse_position().x
		
		if start.global_position.x < 51:
			start.global_position.x = 51
		if start.global_position.x > 270:
			start.global_position.x = 270
			


func _on_area_2d_mouse_entered() -> void:
	ON = true

func _on_area_2d_mouse_exited() -> void:
	ON = false
