// Inherit the parent event
event_inherited();

//States
currentState = noone;

// Movement parameters
velocityMax = 0.0;
acceleration = 0.0;
groundFriction = 0.0;
velocityCurrent = 0.0;
directionCurrent = 0;

// Health points parameters
healthPointsCurrent = healthPointsMax;
isInvulnerable = false;

// Weapon parameters
weaponID = 0;
activeWeapon = noone;
ammoID = 0;
ammoCurrent = 0;
ammoCurrentMax = 0;