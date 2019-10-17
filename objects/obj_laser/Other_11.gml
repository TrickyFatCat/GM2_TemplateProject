/// @description EndStateController
		
// Parameters
var _endTime = 0.1;
var _scaleStepFactor = set_step(_endTime);

// Sequence
if (drawScaleY > 0)
{
	var _scaleStep = drawScaleYMax * _scaleStepFactor;
	drawScaleY = approach_timefactor(drawScaleY, 0, _scaleStep);
}
else
{
	currentState = LaserState.Idle;
}