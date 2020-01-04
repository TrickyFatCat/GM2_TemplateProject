/// User events
#macro SelectWave event_user(0)
#macro SpawnEnemy event_user(1)

/// Spawn pause timer
spawnPauseTime = set_time(5);
spawnPauseTimer = 0;

/// Enemies count limits
enemyCountMax = 20;

/// Spawn list
spawnList = ds_list_create();
var _spawnPointsCount = instance_number(obj_spawn_enemy);

for (var i = 0; i < _spawnPointsCount; i++)
{
	var _spawnPoint = instance_find(obj_spawn_enemy, i);
	
	ds_list_add(spawnList, _spawnPoint); 
}

/// Wave data
currentWaveIndex = WaveData.Test00;
currentWave = GetWave(currentWaveIndex);
waveData = GetWaveData(currentWave);
waveSwitchTime = set_time(10);
waveSwitchTimer = 0;