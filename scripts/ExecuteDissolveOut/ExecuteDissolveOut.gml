/// @param dissolveTimeSec

var _time = argument0;
var _dissolveSpeed = set_step(_time);
		
if (drawAlpha != 0 || dissolvePower != 1 || image_alpha != 1)
{
	drawAlpha = 0;
	dissolvePower = 1;
	image_alpha = 1;
}
		
dissolvePower = approach_timefactor(dissolvePower, 0, _dissolveSpeed);