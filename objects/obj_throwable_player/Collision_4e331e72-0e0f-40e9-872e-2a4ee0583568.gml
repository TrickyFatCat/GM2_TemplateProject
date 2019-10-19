var _isInList = ds_list_find_index(damageList, other.id);
if (!_isInList)
{
	ds_list_add(damageList, other.id);
	
	var _direction = directionCurrent;
	var _offset = 15;
	SpawnImpactEffect(_direction, _offset, 45, c_red, 4);
	
	with (other)
	{
		DealDamage(other.damage);
		EnableFlash(c_red, 1);
	}
}