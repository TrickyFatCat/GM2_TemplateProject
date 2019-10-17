var _alphaStep = 0.075

if (drawAlpha > 0)
{
	drawAlpha -= _alphaStep * global.TimeFactor;
}
else
{
	instance_destroy()
}