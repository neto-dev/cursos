using Godot;
using System;

public class Playert : KinematicBody2D
{

	private Vector2 movement = Vector2.Zero;

	private float move_speed = 400f;

	private float gravity = 20f;

	private float jump_Force = -900f;

	private Vector2 up_Dir = Vector2.Up;

	// for animation
	private AnimatedSprite animation;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		
	}

	
	public override void _PhysicsProcess(float delta)
	{
		PlayerMovement();
	}

	void PlayerMovement()
	{

		movement.y += gravity;

		if (Input.IsActionPressed("move_right")) {
			movement.x = move_speed;
		} else if (Input.IsActionPressed("move_left")) {
			movement.x = -move_speed;
		} else {
			movement.x = 0f;
		}

		MoveAndSlide(movement);
	}// Player movement
}
