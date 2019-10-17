/// @param array
/// @param value

var _array = argument0;
var _value = argument1;

var _arrayLength = array_length_1d(_array);

for (var i = 0; i < _arrayLength; i++)
{
	if (_array[i] == _value)
	{
		return true;
		break;
	}
}
return false;