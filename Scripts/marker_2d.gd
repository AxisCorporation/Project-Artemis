extends Marker2D

const ARROW = preload("res://Prefabs/arrow.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("fire"):
		var arrow_inst = ARROW.instantiate()
		get_tree().root.add_child(arrow_inst)
		arrow_inst.global_position = global_position
		arrow_inst.rotation = rotation
