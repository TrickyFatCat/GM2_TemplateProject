/// @description WeaponShootingController

if (global.TimeFactor > 0)
{	
	var _shootKey;
	
	if (activeWeapon.isAuto == true)
	{
		_shootKey = obj_gameManager.keyShootAuto;
	}
	else
	{
		_shootKey = obj_gameManager.keyShootSemiAuto;
	}
	
	if (_shootKey) && (ammoCurrent != 0)
	{
		activeWeapon.isShooting = true;
	}
	else
	{
		activeWeapon.isShooting = false;
	}
}