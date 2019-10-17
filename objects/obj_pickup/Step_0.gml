/// @description Insert description here

// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case PickupState.Drop:
		DropSequence;
	break;
	
	case PickupState.Idle:
		IdleSequence;
	break;
	
	case PickupState.Pull:
		MovePickup;
		PullSequence;
	break;
	
	case PickupState.Destroy:
		DestroySequence;
	break;
}