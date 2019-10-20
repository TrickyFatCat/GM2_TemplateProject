// Inherit the parent event
event_inherited();

switch (currentState)
{
	case EnemyState.Spawn:
		ExecuteStateSpawn;
	break;
	
	case EnemyState.Idle:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateIdle;
	break;
	
	case EnemyState.TargetSearch:
		ExecuteStateTargetSearch;
	break;
	
	case EnemyState.Move:
		ChangeSpriteTo(spriteRun);
		ExecuteStateMove;
	break;
	
	case EnemyState.Action:
		ExecuteStateAction;
	break;
	
	case EnemyState.Stunlock:
	break;
	
	case EnemyState.Pull:
		ExecuteStatePull;
	break;
	
	case EnemyState.Trancendence:
		ExecuteStateTrancendence;
	break;
	
	case EnemyState.Death:
		ExecuteStateDeath;
	break;
}