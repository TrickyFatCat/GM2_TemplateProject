/// @description CustomDrawSpriteHandler

// Parameters
var _y = y - offsetY - z;

// Draw laser sight
if (laserSightEnabled) && (visible)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	draw_sprite_ext(spr_1pix, image_index, bulletSpawnPointX, bulletSpawnPointY, _scaleX, 1, drawAngle, c_red, 1);
}


// Draw weapon
if ((visible) && weaponSprite != noone)
{
	switch (bulletObjectParent)
	{
		case obj_projectile:
			var _recoilDeltaX = lengthdir_x(recoilPowerCurrent, directionCurrent);
			var _recoilDeltaY = lengthdir_y(recoilPowerCurrent, directionCurrent);

			draw_sprite_ext(weaponSprite, image_index, x - _recoilDeltaX, _y - _recoilDeltaY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
		break;
	
		case obj_hitscan:
		break;
	
		case obj_laser:
		break;
	
		case obj_throwable:
			if (currentShootMode == ShootMode.Charge)
			{
				var _chargeDistance;

				if (currentChargeState == ChargeState.Charging)
				{
					_chargeDistance = lerp(0, 3.5, chargeProgress);
				}
				else
				{
					_chargeDistance = 0;
				}
				
				var _chargeDirection = directionCurrent;
				var _chargeOffsetX = lengthdir_x(_chargeDistance, _chargeDirection);
				var _chargeOffsetY = lengthdir_y(_chargeDistance, _chargeDirection);
				
				draw_sprite_ext(weaponSprite, image_index, x - _chargeOffsetX, _y - _chargeOffsetY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
			}
		break;
	
		case obj_melee:
		break;
	}
}