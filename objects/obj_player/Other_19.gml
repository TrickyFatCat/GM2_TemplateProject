/// @description TrancendenceStateController

// Parameters

var _step = set_step(0.25);
var _targetScale = 1.2;

if (activeWeapon.isShooting)
{
	activeWeapon.isShooting = false;
}

trancendenceProgress = approach_timefactor(trancendenceProgress, 1, _step);
drawScaleX = lerp_timefactor(drawScaleX, _targetScale, trancendenceProgress);
drawScaleY = abs(drawScaleX);
		
with (activeWeapon)
{
	drawScaleX = other.drawScaleX;
	drawScaleY = other.drawScaleY;
}

EnableFlash(c_red, 0.75)
		
if (drawScaleX >= _targetScale)
{
	var _trancendenceTime = set_time(1);
	
	trancendenceTimer += global.TimeFactor;
	
	var _timeIsOver = check_timer(trancendenceTimer, _trancendenceTime);
	
	if (_timeIsOver)
	{
		currentState = PlayerState.Death;
	}
}
