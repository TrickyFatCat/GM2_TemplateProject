// Parameters
enum PlayerAmmo
{
	Spear
}

#macro SpearAmmoData ammoData[PlayerAmmo.Spear]

// Ammo Data
ammoData[PlayerAmmo.Spear] = ds_map_create();
ds_map_add(SpearAmmoData, "ammoCurrent",	1);
ds_map_add(SpearAmmoData, "ammoCurrentMax",	1);