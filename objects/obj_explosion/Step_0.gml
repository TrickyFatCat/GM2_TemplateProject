/// @description ExplisionDamageController
if (dealingDamage)
{
	var _targetsList = ds_list_create();
	var _arrayLength = array_length_1d(explosionTargets);
		
	for (var i = 0; i < _arrayLength; i++)
	{
		var _target = explosionTargets[i];
		
		collision_circle_list(x, y, radius, _target, true, true, _targetsList, true);
	}

	if (!ds_list_empty(_targetsList))
	{
		#region // Deal damage
		for (var i = 0; i < ds_list_size(_targetsList); i++)
		{
			var _target = _targetsList[| i];
			
			with (_target)
			{
				if (!isInvulnerable)
				{
					DealDamage(other.damage);
				}
			}
		}
		#endregion
	}
	else
	{
		ds_list_destroy(_targetsList);
	}
	dealingDamage = false;
}