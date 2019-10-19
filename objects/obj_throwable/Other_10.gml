/// @description MovementSequence

// Parameters
var _isConstant = (acceleration <= 0 || groundFriction <= 0)

// Movement
MoveObject(_isConstant);

CheckCollisions

// Check time without friciton
frictionEnableTimer += global.TimeFactor;

var _timeIsOver = check_timer(frictionEnableTimer, frictionEnableTime);

// Enable friction
if (_timeIsOver)
{
	var _increaseFrictionStep = set_step(0.25);
	
	groundFriction = approach_timefactor(groundFriction, 10, _increaseFrictionStep);
}

// Recalculate speed
if (acceleration > 0)
{
	velocityCurrent = CalculateAcceleratedVelocity(directionCurrent, velocityCurrent, pullVelocityMax, acceleration);
}
else if (groundFriction > 0)
{
	velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	if (velocityCurrent == 0)
	{
		instance_destroy(id);
	}
}
else
{
	CalculateConstantVelocity(velocityCurrent, directionCurrent);
}