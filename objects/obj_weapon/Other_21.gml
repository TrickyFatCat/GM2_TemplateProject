/// @description ShootModeNormalHandler

switch (bulletObjectParent)
{
	case obj_projectile:
		if (isShooting) && (checkShootPause)
		{
			SpawnProjectile;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_hitscan:
		SetBulletTransform(hitscanObjects);
		if (isShooting) && (checkShootPause)
		{
			EnableHitscan;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_laser:
		CalculateLaserSpread;
		SetLaserState;
		SwithchLaserDamage;
	break;
	
	case obj_throwable:
		if (isShooting) && (checkShootPause)
		{
			// Parameters
			var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

			// Spawn projectiles
			for (var i = 0; i < _bulletNumber; i++)
			{
				var _index = round(_bulletNumber / 2) - i;
				CalculateBulletDirection(_index);
				var _bullet = SpawnBullet();
				_bullet.directionCurrent = bulletSpawnDirection;
				SetProjectileParameters(_bullet);
			}
			
			ExecuteAdditionalMechanics;
		}
	break;
	
	case obj_melee:
	
	break;
}