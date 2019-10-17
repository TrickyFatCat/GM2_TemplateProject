/// @description AmmoController

if (ammoID != noone)
{
	with (owner)
	{
		if (ammoCurrent != 0)
		{
			ammoCurrent = max(ammoCurrent - other.shootAmmoCost, 0);
			ds_map_replace(ammoData[other.ammoID],"ammoCurrent",ammoCurrent);
		}
	}
}