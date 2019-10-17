/// @description RateOfFireController

if (rateOfFireAccelerated) && (isShooting)
{
	
	if (rateOfFireCurrent != rateOfFireMax)
	{
		rateOfFireCurrent = approach_timefactor(rateOfFireCurrent, rateOfFireMax, rateOfFireIncrStep);
	}
}
else if (rateOfFireCurrent != rateOfFireMin)
{
	{
		rateOfFireCurrent = approach_timefactor(rateOfFireCurrent, rateOfFireMin, rateOfFireDecrStep);
	}
}