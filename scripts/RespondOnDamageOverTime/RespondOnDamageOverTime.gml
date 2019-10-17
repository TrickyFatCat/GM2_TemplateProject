/// @description Executes script while getting damage over time

/// @param script

var _script = argument0;

var _damagePauseTime = CalculateTimerShootPause(other.rateOfFireCurrent);
var _checkDamageTimer = check_timer(other.damagePauseTimer, _damagePauseTime);

if (_checkDamageTimer)
{
	script_execute(_script);
}