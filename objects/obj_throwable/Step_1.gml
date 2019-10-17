/// @description MovementSequence

var _isConstant = (acceleration <= 0 || groundFriction <= 0)

MoveObject(_isConstant);

frictionEnableTimer += global.TimeFactor;

var _timeIsOver = check_timer(frictionEnableTimer, frictionEnableTime);

if (_timeIsOver)
{
	var _increaseFrictionStep = set_step(0.25);
	
	groundFriction = approach_timefactor(groundFriction, 10, _increaseFrictionStep);
}

if (acceleration > 0)
{
	velocityCurrent = CalculateAcceleratedVelocity(directionCurrent, velocityCurrent, pullVelocityMax, acceleration);
}
else if (groundFriction > 0)
{
	velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	if (velocityCurrent == 0)
	{
		var _pickup = instance_create_layer(x, y, layer, pickupToSpawn);
		with (_pickup)
		{
			drawAngle = other.directionCurrent;
		}
		instance_destroy(id);
	}
}
else
{
	CalculateConstantVelocity(velocityCurrent, directionCurrent);
}