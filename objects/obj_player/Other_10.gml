/// @description MovementControlsHandler

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		var _axisVertical = gamepad_axis_value(global.ActiveGamepad, gp_axislv);
		var _axisHorizontal = gamepad_axis_value(global.ActiveGamepad, gp_axislh);
		var _axisChanged = gamepad_check_axis(global.ActiveGamepad, gp_axislv, gp_axislh);
		
		if (_axisChanged)
		{
			directionX = _axisHorizontal;
			directionY = _axisVertical;
		}
		else
		{
			directionX = 0;
			directionY = 0;
		}
	break;
	
	case InputMethod.KeyboardMouse:
		directionX = obj_gameManager.keyMoveRight - obj_gameManager.keyMoveLeft;
		directionY = obj_gameManager.keyMoveDown - obj_gameManager.keyMoveUp;
	break;
}

if (directionX != 0 || directionY != 0)
{
	currentState = PlayerState.Run;
}
else
{
	currentState = PlayerState.Idle;
}