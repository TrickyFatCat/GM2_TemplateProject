/// @description StatePullController

MoveObject(false);

velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFrictionPull);
		
if (velocityCurrent <= 0)
{
	currentState = EnemyState.Idle;
}
		
CheckCollision(obj_wall_default);