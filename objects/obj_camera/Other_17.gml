/// @description MoveWithKeyboard

var _directionX = obj_gameManager.keyMoveRight - obj_gameManager.keyMoveLeft;
var _directionY = obj_gameManager.keyMoveDown - obj_gameManager.keyMoveUp;

if (_directionX != 0 || _directionY != 0)
{
	var _direction = point_direction(0, 0, _directionX, _directionY);
	
	var _speedX = lengthdir_x(cameraButtonMoveSpeed, _direction);
	var _speedY = lengthdir_y(cameraButtonMoveSpeed, _direction);

	cameraX += _speedX;
	cameraY += _speedY;
}