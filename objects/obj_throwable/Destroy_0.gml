// Inherit the parent event
event_inherited();

var _pickup = instance_create_layer(x, y, layer, pickupToSpawn);
with (_pickup)
{
	directionCurrent = other.directionCurrent;
	drawAngle = directionCurrent;
	initialDirection = directionCurrent;
	hitWall = other.hitWall;
}

ds_list_destroy(damageList);