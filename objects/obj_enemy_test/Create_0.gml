/// @description Insert description here

// Inherit the parent event
event_inherited();

weaponID = EnemyWeapon.Pistol;
SetWeapon(activeWeapon, weaponID);
activeWeapon.visible = true;
activeWeapon.isShooting = false;
activeWeapon.directionCurrent = 270;