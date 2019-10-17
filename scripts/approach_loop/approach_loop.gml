/// @description  approach_loop(start, end, shift);
/// @param  start
/// @param  end
/// @param  shift

//returns 0 if value is greater than 'end'

var _start = argument0;
var _end = argument1;
var _shift = argument2;

var _val = _start + _shift;

if ( _val > _end )
{
	return 0;
}
else
{
	return _val;
}