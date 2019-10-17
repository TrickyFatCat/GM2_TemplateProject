/// @description TrancendenceStateController

// Parameters
var _trancendenceTime = 2;

ExecuteDissolveOut(_trancendenceTime);
		
with (activeWeapon)
{
	ExecuteDissolveOut(_trancendenceTime);
}
		
if (dissolvePower == 0)
{
	currentState = PlayerState.Death;
}
