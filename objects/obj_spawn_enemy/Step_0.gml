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
			var _revealStep = set_step(3);
			
			revealProgress = approach_timefactor(revealProgress, 1, _revealStep);
			
			drawAlpha = lerp_timefactor(0.25, 1, revealProgress);
		}
		else
		{
			currentState = SpawnPointState.Spawn;
		}
	break;
	
	case SpawnPointState.Spawn:
		drawColour = c_orange;
		
		if (spawnProgress != 1)
		{
			var _spawnStep = set_step(3);
			
			spawnProgress = approach_timefactor(spawnProgress, 1, _spawnStep);
		}
		else
		{
			spawnProgress = 0;
			currentState = SpawnPointState.Occupied;
		}
	break;
	
	case SpawnPointState.Occupied:
		drawColour = c_red;
		
		if (revealProgress != 0)
		{
			var _revealStep = set_step(3);
			
			revealProgress = approach_timefactor(revealProgress, 0, _revealStep);
			
			drawAlpha = lerp_timefactor(0.25, 1, revealProgress);
		}
		else
		{
			testTimer += global.TimeFactor;
			
			var _checkTime = check_timer(testTimer, testTime);
			
			if (_checkTime)
			{
				testTimer = 0;
				
				currentState = SpawnPointState.Active;
			}
		}
		
	break;
}