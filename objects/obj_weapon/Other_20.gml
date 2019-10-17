/// @description SpreadController

spread = spreadAngleCurrent / 2;

if (spreadIsDynamic)
{
	var _spreadIncrStep = spreadAngleMax * spreadAngleIncrFactor;
	var _spreadDecrStep = spreadAngleMax * spreadAngleDecrFactor;
	
	if ((isShooting) && (checkShootPause))
	{
		if (spreadAngleCurrent != spreadAngleMax)
		{
		spreadAngleCurrent = approach(spreadAngleCurrent, spreadAngleMax, _spreadIncrStep);
		}
	}
	else if (spreadAngleCurrent != spreadAngleMin)
	{
		spreadAngleCurrent = approach_timefactor(spreadAngleCurrent, spreadAngleMin, _spreadDecrStep);
	}
}