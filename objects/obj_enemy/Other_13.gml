/// @description StateTargetSearchController

var _cellSize = global.PathCellWidth;

var _targetDirection = irandom_range(0.0, 359.0);
var _pointX = playerX + lengthdir_x(128, _targetDirection);
var _pointY = playerY + lengthdir_y(128, _targetDirection);
		
targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;
		
currentState = EnemyState.Move;