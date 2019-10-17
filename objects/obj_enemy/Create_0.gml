/// @description Insert description here

// Inherit the parent event
event_inherited();

// User Events
#macro CheckEntityHP			event_user(0)
#macro ExecuteStateSpawn		event_user(1)
#macro ExecuteStateIdle			event_user(2)
#macro ExecuteStateTargetSearch event_user(3)
#macro ExecuteStateMove			event_user(4)
#macro ExecuteStateAction		event_user(5)
#macro ExecuteStateTrancendence event_user(6)
#macro ExecuteStateDeath		event_user(7)

// Test Timers
testTimer = 0;
testTime = set_time(5);

// Add path
path = path_add();
pathToTarget = noone;
pathSpeed = 0.0;
velocityMax = 2.0;
acceleration = 0.025;
groundFriction = 0.025;
targetDirection = 0.0;
targetX = 0.0;
targetY = 0.0;

// Add weapon
StoreEnemyWeaponData();
activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
activeWeapon.visible = false;

// Base states
enum EnemyState
{
	Spawn,
	Idle,
	TargetSearch,
	Move,
	Action,
	Trancendence,
	Death
}

currentState = EnemyState.Idle;