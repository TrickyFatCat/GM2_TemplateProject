/// @description Insert description here

// Inherit the parent event
event_inherited();

instance_destroy(activeWeapon);

SpawnSplatterEffect(x, y, vfx_splatter_blood, 100, 4);

objectToSpawn = ChooseRandomObject(lootTable);

SpawnLoot(objectToSpawn, x, y);