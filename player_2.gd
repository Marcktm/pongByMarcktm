extends CharacterBody2D

@export var velocidad = 350
@export var posicion_x_fija: float

func _ready() -> void:
	posicion_x_fija = position.x

func _physics_process(delta: float) -> void:
	
	var direccion = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direccion.y -= 1
	if Input.is_action_pressed("ui_down"):
		direccion.y += 1
	
	velocity = direccion * velocidad
	
	move_and_slide() 
	
	position.x = posicion_x_fija
