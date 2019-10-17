move_towards_point(xx, yy, velocity);

velocity -= 0.1 * global.TimeFactor;

if (velocity <= 0.1)
{
	instance_destroy()
}

smearTimer--;
if (smearTimer <= 0)
{
	smearTimer = smearTime;
	
	instance_create_layer(x, y, layer, smearObject);
}