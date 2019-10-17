/// @description MovementController

targetX = target.x;

with (target)
{
	var _targetY = y - z - activeWeapon.offsetY;
}

targetY = _targetY;

MoveObject(false);
var _targetDirection = point_direction(x, y, targetX, targetY);
pullVelocityCurrent = CalculateAcceleratedVelocity(_targetDirection, pullVelocityCurrent, pullVelocityMax, pullAcceleration);