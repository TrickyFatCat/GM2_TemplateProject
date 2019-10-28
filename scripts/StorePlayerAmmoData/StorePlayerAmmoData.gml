// Parameters
enum PlayerAmmo
{
	Spear
}

#macro SpearAmmoData global.PlayerAmmoData[PlayerAmmo.Spear]

// Ammo Data
global.PlayerAmmoData[PlayerAmmo.Spear] = ds_map_create();
ds_map_add(SpearAmmoData, "ammoCurrent",	1);
ds_map_add(SpearAmmoData, "ammoCurrentMax",	1);