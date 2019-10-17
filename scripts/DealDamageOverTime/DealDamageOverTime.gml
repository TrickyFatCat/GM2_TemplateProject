/// @description dealing damage over time

var _damagePauseTime = CalculateTimerShootPause(other.rateOfFireCurrent);
var _checkDamageTimer = check_timer(other.damagePauseTimer, _damagePauseTime);

other.damagePauseTimer += global.TimeFactor;
if (_checkDamageTimer)
{
	DealDamage(other.damage);
	other.damagePauseTimer = 0;
}