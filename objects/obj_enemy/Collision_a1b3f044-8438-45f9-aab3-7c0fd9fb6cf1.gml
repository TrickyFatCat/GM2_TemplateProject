/// @description Insert description here
if (!isInvulnerable)
{
	DealDamage(other.damage);
	CheckEntityHP;
	for (var i = 0; i < 5; i++)
	{
		instance_create_layer(x, y, layer, vfx_impact);
	}
}

instance_destroy(other);