/// @description ShootSequence

// Inherit the parent event
event_inherited();

var _shootPauseTime = CalculateTimerShootPause(rateOfFireCurrent * chargeRateFactor);
checkShootPause = check_timer(shootPauseTimer, _shootPauseTime);

CalculateSpread;

// General logic
switch (currentShootMode)
{
	case ShootMode.Normal:
		ExecuteShootModeNormal;
	break;
	
	case ShootMode.Burst: // Do not use with lasers
		ExecuteShootModeBurst;
	break;
	
	case ShootMode.Cast:
		ExecuteShootModeCast;
	break;
	
	case ShootMode.Charge:
		ExecuteShootModeCharge;
	break;
}

shootPauseTimer += global.TimeFactor;

if ((!isShooting) && shotShakeFactorCurrent > 0)
{
	shotShakeFactorCurrent = 0;
}

CalculateRecoil;

CalculateRateOfFire;