velocityMax = 20;

// Visual paarameters
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
image_xscale = random_range(0.05, 1);
image_yscale = random_range(0.05, 1);
image_alpha = random_range(0.25, 1);

// Movement parameters
direction = random_range(0, 359);
image_angle = direction;
velocityCurrent = random_range(0.4, velocityMax);
groundFriction = random_range(0.1, 0.2);
velocityX = 0;
velocityY = 0;

// Smear parameters
smearTime = 3;
smearTimer = 0;