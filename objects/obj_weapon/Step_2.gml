/// @description SpawnPositionHandler

drawAngle = directionCurrent;

var _deltaX = lengthdir_x(bulletSpawnPointOffset, directionCurrent);
var _deltaY = lengthdir_y(bulletSpawnPointOffset, directionCurrent);

var _x = owner.x;
var _y = owner.y - z - offsetY;

bulletSpawnPointX = _x + _deltaX;
bulletSpawnPointY = _y + _deltaY;

switch (bulletObjectParent)
{
	case obj_hitscan:
		SetBulletTransform(hitscanObjects);
	break;

	case obj_laser:
		SetBulletTransform(laserObjects);
	break;
	
	case obj_throwable:
		if (owner.ammoCurrent == 0)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
	break;
}