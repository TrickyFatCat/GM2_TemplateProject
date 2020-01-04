/// @param objectData
/// @param x
/// @param y

var _objectData = argument0;
var _x = argument1;
var _y = argument2;

var _object = GetObjectID(_objectData);
var _number = GetObjectNumber(_objectData);

if (_object == noone)
{
	return;
}

var _instance;

for (var i = 0; i < _number; i++)
{
	_instance = instance_create_layer(_x, _y, layer, _object);
}

ds_map_destroy(_objectData);

return _instance;