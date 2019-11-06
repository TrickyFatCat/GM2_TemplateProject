/// @description Parameters

// Inherit the parent event
event_inherited();

//User events
#macro DropSequence			event_user(0)
#macro IdleSequence			event_user(1)
#macro PullSequence			event_user(2)
#macro DestroySequence		event_user(3)
#macro MovePickup			event_user(4)
#macro ProcessPickupEffect	event_user(5)

//States
enum PickupState
{
	Drop,
	Idle,
	Pull,
	Destroy
}

currentState = PickupState.Drop;

//Drop parameters
dropSpeed = 0.01;
initialDirection = 0;

//Movement parameters
isBounced = false;
directionCurrent = random_range(0, 360);

//Pulling parameters
target = noone;
targetX = noone;
targetY = noone;
pullVelocityCurrent = 0;

//Life span time
lifespanTime = set_time(7);
lifespanTimer = 0;