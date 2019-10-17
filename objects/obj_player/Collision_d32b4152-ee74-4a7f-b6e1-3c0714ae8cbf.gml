/// @description RespondOnDOTZoneCollision

//Parameters
var _flashColour = c_red;
var _flashPower = 1;
var _flashScript = EnableFlash(_flashColour, _flashPower);

//Sequence
DealDamageOverTime();
ChekPlayerHP;
RespondOnDamageOverTime(_flashScript);