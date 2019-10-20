/// @param currentDirection
/// @param spawnOffset
/// @param noise
/// @param colour
/// @param velocityMax

var _currentDirection = argument0;
var _spawnOffset = argument1;
var _noise = argument2;
var _colour = argument3;
var _velocity = argument4;

var _direction = _currentDirection - 180;
var _offsetX = lengthdir_x(_spawnOffset, _currentDirection);
var _offsetY = lengthdir_y(_spawnOffset, _currentDirection);

var _x = x + _offsetX;
var _y = y + _offsetY;

for (var i = 0; i < 10; i++)
{
	var _impactObject = instance_create_layer(_x, _y, layer, vfx_impact);
	var _directionNoise = random_range(-_noise, _noise);
	with (_impactObject)
	{
		directionCurrent = _direction + _directionNoise;
		drawColour = _colour;
		velocityMax = _velocity;
	}
	_impactObject.directionCurrent = _direction + _directionNoise;
}