/// @description CustomDrawSpriteHandler

// Parameters
var _recoilDeltaX = lengthdir_x(recoilPowerCurrent, directionCurrent);
var _recoilDeltaY = lengthdir_y(recoilPowerCurrent, directionCurrent);

// Draw laser sight
if (laserSightEnabled) && (visible)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	draw_sprite_ext(spr_1pix, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, 1, drawAngle, c_red, 1);
}

// Draw weapon
if (visible)
{
	var _y = y - z - offsetY;
	
	draw_sprite_ext(weaponSprite, image_index, x - _recoilDeltaX, _y - _recoilDeltaY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
}