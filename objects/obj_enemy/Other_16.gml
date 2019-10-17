/// @description StateTrancendenceController

testTimer += global.TimeFactor;
		
var _checkTimer = check_timer(testTimer, testTime)
		
if (_checkTimer)
{
	testTimer = 0;
	currentState = EnemyState.Death;
}