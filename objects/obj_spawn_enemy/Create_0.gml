/// @description Insert description here

// Inherit the parent event
event_inherited();

enum SpawnPointState
{
	Inactive,
	Active,
	Reveal,
	Spawn,
	Occupied
}

currentState = choose(SpawnPointState.Active, SpawnPointState.Inactive);

drawAlpha = 0.25;

revealProgress = 0;
spawnProgress = 0;

testTime = set_time(5);
testTimer = 0;