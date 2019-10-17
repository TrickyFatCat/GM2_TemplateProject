/// @description RespondOnHitscanCollision

//Sequence
if (!isInvulnerable) && (other.dealingDamage)
{
	DealDamage(other.damage);
	CheckEntityHP;
}