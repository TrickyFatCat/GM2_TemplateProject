/// @param lootTable

var _lootTable = argument0;

var _arrayLength = array_length_1d(_lootTable);

var _lootWeight = 0;

for (var i = 0; i < _arrayLength; i++)
{
	var _objectData = _lootTable[i];
	
	_lootWeight += _objectData[? "weight"];
}

return _lootWeight;