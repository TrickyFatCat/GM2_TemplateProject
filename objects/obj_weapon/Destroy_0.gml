// Inherit the parent event
event_inherited();

if (laserObjects != noone)
{
	DestroyBulletObjects(laserObjects);
}

if (hitscanObjects != noone)
{
	DestroyBulletObjects(hitscanObjects);
}