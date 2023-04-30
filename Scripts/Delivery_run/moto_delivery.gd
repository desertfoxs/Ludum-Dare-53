extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
#var velocidad_Arriba_Abajo = 10
var velocidad_moto = 15
var velocidad = Vector2()

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if (Input.is_action_pressed("p1_moverArriba")):
		velocidad.y = -velocidad_moto+10
	elif (Input.is_action_pressed("p1_moverAbajo")):
		velocidad.y = velocidad_moto-10
	elif (Input.is_action_pressed("p1_moverIzquierda")):
		velocidad.x = -velocidad_moto
	elif (Input.is_action_pressed("p1_moverDerecha")):
		velocidad.x = velocidad_moto
	else:
		velocidad.y = 0
		velocidad.x = 0
	#velocidad_moto = velocidad_moto.normalized()*100
	move_and_collide(velocidad)
