/// @description Insert description here

// Inherit the parent event
event_inherited();

if (obj_gameManager.keyMenuAccept)
{
	SetGameState(GameState.Transition);
	currentState = InterfaceState.TransitionOut;
}