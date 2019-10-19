// Inherit the parent event
event_inherited();

MoveObject(false);

velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);

if (velocityCurrent <= 0)
{
	instance_destroy()
}