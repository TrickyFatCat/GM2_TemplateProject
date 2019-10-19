/// @description StateTrancendenceController

var _trancendenceTime = 0.15;
var _scaleStepFactor = set_step(_trancendenceTime);
var _targetScale = 1.25;

// Sequence
if (drawScaleX < _targetScale)
{
	var _scaleStep = _targetScale * _scaleStepFactor;
	drawScaleX = approach_timefactor(drawScaleX, _targetScale, _scaleStep);
	drawScaleY = drawScaleX;
}
else
{
	currentState = EnemyState.Death;
}