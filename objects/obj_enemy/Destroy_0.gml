/// @description Insert description here

// Inherit the parent event
event_inherited();

instance_destroy(activeWeapon);

SpawnSplatterEffect(x, y, vfx_splatter_blood, 100, 4);

var _table = global.EnemyLootData[LootTable.Test]

objectToSpawn = ChooseObjectToSpawn(_table);

SpawnObject(objectToSpawn, x, y);