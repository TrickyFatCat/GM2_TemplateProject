var _globalLength = array_length_1d(global.EnemyLootData);

for (var i = 0; i < _globalLength; i++)
{
	var _lootTable = global.EnemyLootData[i];
	var _lootNumber = array_length_1d(_lootTable);
	
	for (var j = 0; j < _lootNumber; j++)
	{
		ds_map_destroy(_lootTable[j]);
	}
}