global.LootData = [];

enum LootTable
{
	Test
}

// Loot table creation
var _lootNumber = 3;
var _loot = CreateDataMap(_lootNumber);
SetObjectData(_loot[0], noone,				1,	 5);
SetObjectData(_loot[1], obj_pickup_test00,	1,	 40);
SetObjectData(_loot[2], obj_pickup_test01,	4,	 30);
SetLootData(LootTable.Test, _loot);