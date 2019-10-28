global.EnemyLootData = [];

enum LootTable
{
	Test
}

// Loot table creation
var _lootNumber = 3;
var _loot = CreateLootMap(_lootNumber);
AddItemToLoot(_loot[0], noone,					1,	 5);
AddItemToLoot(_loot[1], obj_pickup_test00,		1,	 40);
AddItemToLoot(_loot[2], obj_pickup_test01,		4,	 30);
SetLootData(LootTable.Test, _loot);

var _table = global.EnemyLootData[LootTable.Test];
for (var i = 0; i < _lootNumber; i++)
{
	var _name = object_get_name(GetLootID(_table[i]))
	var _number = string(GetLootNumber(_table[i]))
	var _weight = string(GetLootWeight(_table[i]))
}