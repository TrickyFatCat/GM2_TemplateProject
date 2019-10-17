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
		
	break;
	
	case obj_melee:
	
	break;
}