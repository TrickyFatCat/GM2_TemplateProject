// Inherit the parent event
event_inherited();

velocityMax = 4;

// Visual paarameters
drawScaleX = random_range(2, 4);
drawScaleY = random_range(2, 4);

// Movement parameters
velocityCurrent = random_range(1, velocityMax);
groundFriction = random_range(0.1, 0.2);
velocityX = 0;
velocityY = 0;

alarm_set(0, 1);