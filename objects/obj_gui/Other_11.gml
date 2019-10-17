/// @description TransitionInStateHandler

/// Parameters
var _transitionSpeedIn = max(transitionFactor / 10, 0.005);

/// Sequence
transitionInTimer += global.TimeFactor;

if (check_timer(transitionInTimer, transitionInTime))
{
	if (transitionFactor != 0)
	{
		transitionFactor = approach(transitionFactor, 0, _transitionSpeedIn);
	}
	else
	{
		SetGameState(GameState.Active);
		currentState = InterfaceState.GUI;
	}
}	