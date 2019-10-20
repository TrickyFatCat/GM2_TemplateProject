// Inherit the parent event
event_inherited();

// User events
#macro MoveThrowableProjectile	 event_user(0)
#macro CheckCollisions			 event_user(1)
#macro ExecuteHitWallSequence	 event_user(2)

// Damage Parameters
damage = 0;

// Bouncing Parameters
isBounced = false;
bounceFriction = 0;
bouncedDirectionDelta = 20;

// Friction calculations
frictionEnableTimer = 0;
frictionEnableTime = set_time(0.1);

hitWall = false;
damageList = ds_list_create();