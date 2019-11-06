/// @description DropStateController

MoveObject(false);

velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
		
if (velocityCurrent <= 0)
{
	currentState = PickupState.Idle;
}

CheckBouncingCollision(obj_wall_default);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}