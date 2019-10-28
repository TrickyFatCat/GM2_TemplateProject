/// @description PullSequence

var _distance = point_distance(x, y, targetX, targetY);

if (_distance <= 2)
{
	with (global.Player)
	{
		ammoCurrent = min(ammoCurrent + 1, ammoCurrentMax);
		ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID], "ammoCurrent", ammoCurrent);
	}
	
	instance_destroy();
}