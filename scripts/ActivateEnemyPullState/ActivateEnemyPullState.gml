/// @param target
/// @param direction
/// @param directionNoise
/// @param velocityCurrent

var _target = argument0;
var _direction = argument1;
var _directionNoise = argument2;
var _velocity = argument3;

var _noise = random_range(-_directionNoise, _directionNoise);

with (_target)
{
	currentState = EnemyState.Pull;
	directionCurrent = _direction + _noise;
	velocityCurrent = _velocity;
}