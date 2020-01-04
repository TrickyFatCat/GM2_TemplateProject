var _enemyCountCurrent = instance_number(obj_enemy);
var _listSize = ds_list_size(spawnList);


if (global.BattleState == BattleState.Active && _enemyCountCurrent < enemyCountMax)
{
	//SelectWave;
	
	spawnPauseTimer += global.TimeFactor;
	
	var _pauseIsOver = check_timer(spawnPauseTimer, spawnPauseTime);
	
	if (_pauseIsOver)
	{
		spawnPauseTimer = 0;
		
		SpawnEnemy;
	}
}