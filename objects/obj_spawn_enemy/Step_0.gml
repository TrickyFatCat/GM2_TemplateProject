switch (currentState)
{
	case SpawnPointState.Inactive:
		drawColour = c_gray;
	break;
	
	case SpawnPointState.Active:
		drawColour = c_green;
	break;
	
	case SpawnPointState.Reveal:
		drawColour = c_fuchsia;
		
		if (revealProgress != 1)
		{
			var _revealStep = set_step(1);
			
			revealProgress = approach_timefactor(revealProgress, 1, _revealStep);
			
			drawAlpha = lerp_timefactor(0, 1, revealProgress);
		}
		else
		{
			currentState = SpawnPointState.Spawn;
			owner = instance_create_layer(x, y, "entities", enemyToSpawn);
			owner.currentState = EnemyState.Spawn;
		}
	break;
	
	case SpawnPointState.Spawn:
		drawColour = c_orange;
		
		var _state = owner.currentState;
		
		
		if (_state >= EnemyState.Idle)
		{
			currentState = SpawnPointState.Occupied;
		}
	break;
	
	case SpawnPointState.Occupied:
		drawColour = c_red;
		
		if (revealProgress != 0)
		{
			var _revealStep = set_step(0.15);
			
			revealProgress = approach_timefactor(revealProgress, 0, _revealStep);
			
			drawAlpha = lerp_timefactor(0, 1, revealProgress);
		}
		
		occupiedTimer += global.TimeFactor;
		
		var _timerIsOver = check_timer(occupiedTimer, occupiedTime);
		
		if (_timerIsOver)
		{
			occupiedTimer = 0;
			currentState = SpawnPointState.Active;
		}
	break;
}