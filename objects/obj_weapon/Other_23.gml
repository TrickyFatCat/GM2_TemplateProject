/// @description ShootModeCastHandler

switch (currentCastState)
{
	case CastState.Idle:
		if (isShooting)
		{
			currentCastState = CastState.Process;
		}
	break;
	
	case CastState.Process:
		if (isShooting)
		{
			var _castStep = set_step(castTime);
			
			if (castProgress < 1)
			{
				castProgress = approach_timefactor(castProgress, 1, _castStep);
			}
			else
			{
				currentCastState = CastState.Execute;
				castProgress = 0;
			}
		}
		else
		{
			currentCastState = CastState.Idle;
			castProgress = 0;
		}
	break;
	
	case CastState.Execute: 
		if (castExecuteCount > 0)
		{
			isShooting = true;
			if (shotCount == castExecuteCount)
			{
				isShooting = false;
				shotCount = 0;
				currentCastState = CastState.Idle;
			}
		}
		else if (castExecuteCount <= 0)
		{
			if (!isShooting)
			{
				currentCastState = CastState.Idle;
			}
		}
		
		ExecuteShootModeNormal;
	break;
}