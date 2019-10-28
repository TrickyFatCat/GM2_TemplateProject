var _listIndex = ds_list_find_index(damageList, other);

if (_listIndex == -1)
{
	var _target = other;
	
	ds_list_add(damageList, _target);
	
	with (_target)
	{
		DealDamage(other.damage);
		EnableFlash(c_red, 1);
		SpawnImpactEffect(directionCurrent, 0, 20, c_red, 4);
		SpawnImpactEffect(directionCurrent - 180, 0, 20, c_red, 4);
		SpawnSplatterEffect(x, y, vfx_splatter_blood, 10, 3);
	}
	
	ActivateEnemyPullState(_target, directionCurrent, 45, 4);
}