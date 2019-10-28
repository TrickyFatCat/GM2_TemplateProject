/// @description Insert description here

// Inherit the parent event
event_inherited();

SetShadowParametrs(true, 1);

weaponID = EnemyWeapon.Pistol;
SetEnemyWeapon(activeWeapon, weaponID);
activeWeapon.visible = false;
activeWeapon.isShooting = false;
activeWeapon.directionCurrent = 270;