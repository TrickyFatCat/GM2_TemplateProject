/// @description StateIdleController

var _delayIsOver = check_timer(activationTimer, activationDelay);

if (!_delayIsOver)
{
	activationTimer = increase_timer(activationTimer);
}
else
{
	currentState = EnemyState.TargetSearch;	
}