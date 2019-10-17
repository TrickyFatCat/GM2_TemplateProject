/// @description StartStateController

// Parameters
var _startTime = 0.1;
var _scaleStepFactor = set_step(_startTime);

// Sequence
if (drawScaleY < drawScaleYMax)
{
	var _scaleStep = drawScaleYMax * _scaleStepFactor;
	drawScaleY = approach_timefactor(drawScaleY, drawScaleYMax, _scaleStep);
}
else
{
	currentState = LaserState.Active;
}