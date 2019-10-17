var _enemyCountCurrent = instance_number(obj_enemy);
var _listSize = ds_list_size(spawnList);


if (global.BattleState == BattleState.Active && _enemyCountCurrent < enemyCountMax)
{
	spawnPauseTimer += global.TimeFactor;
	
	var _pauseIsOver = check_timer(spawnPauseTimer, spawnPauseTime);
	
	if (_pauseIsOver)
	{
		spawnPauseTimer = 0;
		
		var _activeSpawnPoints = ds_list_create();
		
		for (var i = 0; i < _listSize; i++)
		{
			var _spawn = spawnList[| i];
			var _spawnState = _spawn.currentState;
			
			if (_spawnState == SpawnPointState.Active)
			{
				ds_list_add(_activeSpawnPoints, _spawn);
			}
		}
		
		var _activeListSize = ds_list_size(_activeSpawnPoints);
		
		if (_activeListSize > 0)
		{
			var _spawnID = irandom_range(0, _activeListSize - 1);
			var _pointForSpawn = _activeSpawnPoints[| _spawnID];
		
			// Choose enemy for spawn//
			
			_pointForSpawn.currentState = SpawnPointState.Reveal;
		}
		
		ds_list_destroy(_activeSpawnPoints);
	}
}

