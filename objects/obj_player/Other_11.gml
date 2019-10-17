/// @description MovementController

MoveObject(false);

switch currentState
{
	case PlayerState.Idle:
		velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	break;
	
	case PlayerState.Run:
		directionCurrent = point_direction(0, 0, directionX, directionY);
		velocityCurrent = CalculateAcceleratedVelocity(directionCurrent, velocityCurrent, velocityMax, acceleration);
	break;
}