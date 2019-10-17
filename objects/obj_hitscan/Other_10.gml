/// @description FinishStateHandler

// Parameters
var _alphaChangeTimer = 0.1;
var _alphaStepFactor = set_step(_alphaChangeTimer);

// Sequence
if (drawAlpha != 0)
{
	drawAlpha = approach_timefactor(drawAlpha, 0, _alphaStepFactor);
}
else
{
	currentState = HitscanState.Idle;
}