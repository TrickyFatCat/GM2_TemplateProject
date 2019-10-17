/// @description CameraShakerHandler

if (isShackingCamera)
{
	show_debug_message("Shake camera")
	shotShakeFactorCurrent = min(shotShakeFactorCurrent + shotShakeFactor, 1);
	var _shakeValueCurrent = shakeValue * shotShakeFactorCurrent * chargeShakeFactor;
	ApplyShakeToCamera(angularShakeEnabled, _shakeValueCurrent);
}