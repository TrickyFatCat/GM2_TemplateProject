/// @description PullSequence

var _distance = point_distance(x, y, targetX, targetY);

if (_distance <= 2)
{	
	ProcessPickupEffect;
	
	instance_destroy();
}