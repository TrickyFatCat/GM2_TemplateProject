// Parameters
enum PlayerWeapon
{
	Spear
}

#macro SpearData global.PlayerWeaponData[PlayerWeapon.Spear]

// Weapons data
global.PlayerWeaponData[PlayerWeapon.Spear] = ds_map_create();
ds_map_add(SpearData, "weaponSprite",					spr_weapon);
ds_map_add(SpearData, "offsetY",						4);
ds_map_add(SpearData, "laserSightEnabled",				false);
ds_map_add(SpearData, "isAuto",							true);
ds_map_add(SpearData, "currentShootMode",				ShootMode.Charge);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "bulletObject",					obj_throableP_spear);
ds_map_add(SpearData, "bulletNumber",					1);
ds_map_add(SpearData, "bulletSpawnPointOffset",			0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "damage",							5);
ds_map_add(SpearData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "rateOfFireAccelerated",			false);
ds_map_add(SpearData, "rateOfFireIncrStep",				0);
ds_map_add(SpearData, "rateOfFireDecrStep",				0);
ds_map_add(SpearData, "rateOfFireMin",					2);
ds_map_add(SpearData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "burstRate",						0);
ds_map_add(SpearData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "castExecuteCount",				0);
ds_map_add(SpearData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "chargeExecuteCountMin",			1);
ds_map_add(SpearData, "chargeExecuteCountMax",			0);
ds_map_add(SpearData, "chargeTime",						1);
ds_map_add(SpearData, "chargeWaitTime",					0);
ds_map_add(SpearData, "chargeDamageFactorMax",			4);
ds_map_add(SpearData, "chargeHealFactorMax",			0);
ds_map_add(SpearData, "chargeRateFactorMax",			0);
ds_map_add(SpearData, "chargeBulletNumberFactorMax",	0);
ds_map_add(SpearData, "chargeVelocityFactorMax",		20);
ds_map_add(SpearData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "spreadIsDynamic",				false);
ds_map_add(SpearData, "spreadIsUniform",				false);
ds_map_add(SpearData, "spreadAngleIncrFactor",			0.2);
ds_map_add(SpearData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(SpearData, "spreadAngleMin",					0);
ds_map_add(SpearData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "ammoID",							PlayerAmmo.Spear);
ds_map_add(SpearData, "shootAmmoCost",					1);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "recoilPower",					0);
ds_map_add(SpearData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "hitscanScaleY",					2);
ds_map_add(SpearData, "projectileVelocityNoiseFactor",	0);
ds_map_add(SpearData, "projectileVelocityCurrent",		1);
ds_map_add(SpearData, "projectileVelocityMax",			0);
ds_map_add(SpearData, "projectileAcceleration",			0);
ds_map_add(SpearData, "projectileFriction",				0);
ds_map_add(SpearData, "projectileBounceEnable",			false);
ds_map_add(SpearData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(SpearData, "isShackingCamera",				true);
ds_map_add(SpearData, "angularShakeEnabled",			false);
ds_map_add(SpearData, "shakeValue",						1);
ds_map_add(SpearData, "shotShakeFactor",				1);