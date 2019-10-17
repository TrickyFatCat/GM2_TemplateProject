/// @description Parameters

// Inherit the parent event
event_inherited();

//User events
#macro DropSequence event_user(0)
#macro IdleSequence event_user(1)
#macro PullSequence event_user(2)

//States
enum PickUpState
{
	Drop,
	Idle,
	Pull,
	Destroy
}

currentState = PickUpState.Idle;

//Drop parameters
dropSpeed = 0.01;

//Pulling parameters
isPullable = true;
pullVelocityCurrent = 0;

//Life span time
lifespanTime = set_time(7);
lifespanTimer = 0;