/// @param finishDistance
/// @param direction

var _finishDistance = argument0;
var _direction = argument1;

var _cellSize = global.PathCellWidth;

var _pointX = target.x + lengthdir_x(_finishDistance, _direction);
var _pointY = target.y + lengthdir_y(_finishDistance, _direction);
		
targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;
		
currentState = EnemyState.Move;