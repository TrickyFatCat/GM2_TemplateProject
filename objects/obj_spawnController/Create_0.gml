/// Spawn pause timer
spawnPauseTime = set_time(5);
spawnPauseTimer = 0;

/// Enemies count limits
enemyCountMax = 20;

/// Spawn lists
spawnList = ds_list_create();
var _spawnPointsCount = instance_number(obj_spawn_enemy);

for (var i = 0; i < _spawnPointsCount; i++)
{
	var _spawnPoint = instance_find(obj_spawn_enemy, i);
	
	ds_list_add(spawnList, _spawnPoint); 
}