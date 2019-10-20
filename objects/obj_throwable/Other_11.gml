/// @description WallCollisionCheck

// Collision X
if (place_meeting(x + velocityX, y, obj_wall_default))
{
	while (!place_meeting(x + sign(velocityX), y, obj_wall_default))
	{
		x += sign(velocityX);
	}
	velocityX = 0;
	
	ExecuteHitWallSequence;
}

// Collision Y
if (place_meeting(x, y + velocityY, obj_wall_default))
{
	while (!place_meeting(x, y + sign(velocityY), obj_wall_default))
		{
			y += sign(velocityY);
		}
	velocityY = 0;
	
	ExecuteHitWallSequence;
}