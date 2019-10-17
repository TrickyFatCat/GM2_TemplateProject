// Parameters
enum PlayerWeapon
{
	Pistol
}

#macro PistolData weaponData[PlayerWeapon.Pistol]

// Weapons data
weaponData[PlayerWeapon.Pistol] = ds_map_create();
ds_map_add(PistolData, "weaponSprite",					spr_weapon);
ds_map_add(PistolData, "offsetY",						4);
ds_map_add(PistolData, "laserSightEnabled",				false);
ds_map_add(PistolData, "isAuto",						true);
ds_map_add(PistolData, "currentShootMode",				ShootMode.Charge);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "bulletObject",					obj_projectileP_pistol);
ds_map_add(PistolData, "bulletNumber",					1);
ds_map_add(PistolData, "bulletSpawnPointOffset",		0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "damage",						5);
ds_map_add(PistolData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "rateOfFireAccelerated",			false);
ds_map_add(PistolData, "rateOfFireIncrStep",			0);
ds_map_add(PistolData, "rateOfFireDecrStep",			0);
ds_map_add(PistolData, "rateOfFireMin",					2);
ds_map_add(PistolData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "burstRate",						0);
ds_map_add(PistolData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "castExecuteCount",				0);
ds_map_add(PistolData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "chargeExecuteCountMin",			1);
ds_map_add(PistolData, "chargeExecuteCountMax",			0);
ds_map_add(PistolData, "chargeTime",					1);
ds_map_add(PistolData, "chargeWaitTime",				0);
ds_map_add(PistolData, "chargeDamageFactorMax",			0);
ds_map_add(PistolData, "chargeHealFactorMax",			0);
ds_map_add(PistolData, "chargeRateFactorMax",			0);
ds_map_add(PistolData, "chargeBulletNumberFactorMax",	0);
ds_map_add(PistolData, "chargeVelocityFactorMax",		20);
ds_map_add(PistolData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "spreadIsDynamic",				false);
ds_map_add(PistolData, "spreadIsUniform",				false);
ds_map_add(PistolData, "spreadAngleIncrFactor",			0.2);
ds_map_add(PistolData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(PistolData, "spreadAngleMin",				0);
ds_map_add(PistolData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "ammoID",						noone);
ds_map_add(PistolData, "shootAmmoCost",					0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "recoilPower",					0);
ds_map_add(PistolData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "hitscanScaleY",					2);
ds_map_add(PistolData, "projectileVelocityNoiseFactor",	0);
ds_map_add(PistolData, "projectileVelocityCurrent",		1);
ds_map_add(PistolData, "projectileVelocityMax",			0);
ds_map_add(PistolData, "projectileAcceleration",		0);
ds_map_add(PistolData, "projectileFriction",			0);
ds_map_add(PistolData, "projectileBounceEnable",		false);
ds_map_add(PistolData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "isShackingCamera",				true);
ds_map_add(PistolData, "angularShakeEnabled",			false);
ds_map_add(PistolData, "shakeValue",					1);
ds_map_add(PistolData, "shotShakeFactor",				1);