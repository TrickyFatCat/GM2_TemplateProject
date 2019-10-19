/// @description CollisionCheck

var _spawnOffset = 8

var _offsetX = lengthdir_x(_spawnOffset, directionCurrent);
var _offsetY = lengthdir_y(_spawnOffset, directionCurrent);

var _x = x + _offsetX;
var _y = y + _offsetY;

// Collision X
if (place_meeting(x + velocityX, y, obj_wall_default))
{
	while (!place_meeting(x + sign(velocityX), y, obj_wall_default))
	{
		x += sign(velocityX);
	}
	velocityX = 0;
	
	hitWall = true;
	instance_destroy();
	var _colour = make_color_rgb(211, 191, 169);
	SpawnImpactEffect(directionCurrent, 15, 45, _colour, 4);
}

// Collision Y
if (place_meeting(x, y + velocityY, obj_wall_default))
{
	while (!place_meeting(x, y + sign(velocityY), obj_wall_default))
		{
			y += sign(velocityY);
		}
	velocityY = 0;
	
	hitWall = true;
	instance_destroy();
	var _colour = make_color_rgb(211, 191, 169);
	SpawnImpactEffect(directionCurrent, 15, 45, _colour, 4);
}