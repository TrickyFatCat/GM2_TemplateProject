/// @description DropSequence

if (hitWall)
{
	var _sequenceStep = set_step(0.25);
	osscilationProgress = approach_timefactor(osscilationProgress, 1, _sequenceStep);

	var _angleDiff = lerp(25, 0, osscilationProgress);
	var _angleMin = initialDirection - _angleDiff;
	var _angleMax = initialDirection + _angleDiff;

	drawAngle = wave(_angleMin, _angleMax, 0.05, 0);

	if (osscilationProgress >= 1)
	{
		currentState = PickupState.Idle;
		sprite_index = spr_weapon;
	}
}
else
{
	currentState = PickupState.Idle;
	sprite_index = spr_weapon;
}