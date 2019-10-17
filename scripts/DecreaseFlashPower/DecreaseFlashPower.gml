/// @description FlashPowerController

// Parameters
var _flashPowerDrop = 0.05;

// Decrese flash
if flashPower > 0
{
	flashPower = approach_timefactor(flashPower, 0, _flashPowerDrop);
}