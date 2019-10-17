// Inherit the parent event
event_inherited();

// User events

// Damage Parameters
damage = 0;

// Bouncing Parameters
isBounced = false;
bounceFriction = 0;
bouncedDirectionDelta = 20;

// Friction calculations
frictionEnableTimer = 0;
frictionEnableTime = set_time(0.1);