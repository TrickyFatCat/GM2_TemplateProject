/// @param dissolveTimeSec

var _time = argument0;
var _dissolveSpeed = set_step(_time);

if (drawAlpha != 0)
{
	dissolvePower = 0;
	drawAlpha = 0;
}

dissolvePower = approach_timefactor(dissolvePower, 1, _dissolveSpeed);

if (dissolvePower == 1)
{
	drawAlpha = 1;
	image_alpha = 0;
}