/// @description RespondOnProjectileCollision

//Params
var _flashColour = c_red;
var _flashPower = 1;

//Sequence
if (!isInvulnerable)
{
	DealDamage(other.damage);
	EnableFlash(_flashColour, _flashPower);
	ChekPlayerHP;
}

instance_destroy(other);