/// @description StateMoveController

//var _pathExists = mp_grid_path(global.PathGrid, path, x, y, targetX, targetY, true);
var _pathExists = mp_potential_path_object(path, targetX, targetY, pathSpeed, 1, obj_obstacle);
		
if (_pathExists)
{
	path_start(path, pathSpeed, path_action_stop, false);
}
else
{
	currentState = EnemyState.TargetSearch;
}
		
if (path_get_length(path) > 0)
{
	pathSpeed = global.TimeFactor * velocityCurrent + (0.5 * sqr(global.TimeFactor) * acceleration);
	velocityCurrent = min(velocityCurrent + acceleration * global.TimeFactor, velocityMax);
}
else
{
	pathSpeed = 0;
	velocityCurrent = 0;
	currentState = EnemyState.Action;
}