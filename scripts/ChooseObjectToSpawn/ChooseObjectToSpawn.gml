/// @param lootTable

var _lootTable = argument0;

var _objectToSpawn = _lootTable;

while (is_array(_objectToSpawn))
{
	_objectToSpawn = GetObjectToSpawn(_objectToSpawn);
}

return _objectToSpawn;