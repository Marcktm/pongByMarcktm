extends RigidBody2D

@export var direccionPelota = 1
@export var velocidadPelota = 500
@export var gol = false

func  _ready() -> void:
	iniciar()

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("players"):
		print("cambio_de_dirección")
		direccionPelota = direccionPelota * (-1)
		linear_velocity.x = direccionPelota * velocidadPelota

func iniciar():
	# Da un ángulo aleatorio en Y para evitar trayectorias rectas
	var angulo = randf_range(-0.5, 0.5)
	linear_velocity = Vector2(direccionPelota, angulo).normalized() * velocidadPelota

func reset():
	# Teletransportar al centro
	gol = true
	linear_velocity = Vector2.ZERO
	
	# Esperar 1 segundo y luego iniciar de nuevo
	await get_tree().create_timer(1.0).timeout

	direccionPelota *= -1
	iniciar()

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if gol:
		state.transform.origin = Vector2 (262,46)
		gol = false
