MoveObject(false);

velocityCurrent = CalculateDeceleratedVelocity(direction, velocityCurrent, groundFriction);

if (velocityCurrent <= 0)
{
	instance_destroy()
}

smearTimer += global.TimeFactor;

var _checkTimer = check_timer(smearTimer, smearTime);

if (_checkTimer)
{
	smearTimer = 0;
	
	instance_create_layer(x, y, layer, smearObject);
}