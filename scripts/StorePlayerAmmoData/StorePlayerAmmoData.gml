// Parameters
enum PlayerAmmo
{
	Pistol
}

#macro PistolAmmoData ammoData[PlayerAmmo.Pistol]

// Ammo Data
ammoData[PlayerAmmo.Pistol] = ds_map_create();
ds_map_add(PistolAmmoData, "ammoCurrent",		100);
ds_map_add(PistolAmmoData, "ammoCurrentMax",	100);