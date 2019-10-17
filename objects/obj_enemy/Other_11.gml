/// @description SpawnStateController

// Parameters 
var _spawnTime = 1.5;

// Sequence
isInvulnerable = true;

ExecuteDissolveIn(_spawnTime);
	
with (activeWeapon)
{
	ExecuteDissolveIn(_spawnTime);
}
	
if (dissolvePower == 1)
{
	currentState = EnemyState.Idle;
}