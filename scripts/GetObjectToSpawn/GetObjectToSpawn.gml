/// @param lootTable

var _lootTable = argument0;

var _result;
var _objectData;
var _maxWeight = 0;

var _arrayLength = array_length_1d(_lootTable);

for (var i = 1; i < _arrayLength; i++)
{
	_objectData = _lootTable[i];
	
	var _name = object_get_name(GetLootID(_objectData));
	var _number = string(GetLootNumber(_objectData))
	var _weight = string(GetLootWeight(_objectData))
	
	show_debug_message(_name + " | " + _number + " | " + _weight + " | ");
}

var _lootWeight = SetLootWeight(_lootTable);

var _diceRoll = irandom_range(1, _lootWeight);

for (var i = 0; i < _arrayLength; i++)
{
	_objectData = _lootTable[i];
	
	var _object = GetLootID(_objectData);
	var _weight = GetLootWeight(_objectData);
	
	_maxWeight += _weight;
	
	if (_diceRoll <= _maxWeight)
	{
		if (is_array(_object))
		{
			return _object;
		}
		else
		{
			break;
		}
	}
}

_result = ds_map_create();
ds_map_copy(_result, _objectData);

return _result;