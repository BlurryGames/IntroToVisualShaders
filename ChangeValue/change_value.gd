class_name ChangeValue extends Sprite2D

func _ready() -> void:
	var shader_material := material as ShaderMaterial
	if shader_material:
		shader_material.set_shader_parameter("color", Vector4(1.0, 0.0, 0.0, 1.0))
	
	var tween: Tween = create_tween()
	tween.tween_property(self, "material:shader_parameter/alpha", 1.0, 2.0)
