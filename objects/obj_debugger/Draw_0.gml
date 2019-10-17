/// @description Insert description here

//if (instance_exists(obj_pathgrid))
//{
//	mp_grid_draw(global.PathGrid);
//}


if (instance_exists(obj_player))
{
	with (obj_player)
	{
		draw_set_color(c_red);
		
		var _startX = activeWeapon.bulletSpawnPointX;
		var _startY = activeWeapon.bulletSpawnPointY;
		
		var _distance = 2000;
		
		spread = activeWeapon.spreadAngleCurrent / 2;
		var _direction1 = activeWeapon.directionCurrent + spread;
		var _direction2 = activeWeapon.directionCurrent - spread;
		
		var _endX1 = _startX + lengthdir_x(_distance, _direction1);
		var _endY1 = _startY + lengthdir_y(_distance, _direction1);
		
		var _endX2 = _startX + lengthdir_x(_distance, _direction2);
		var _endY2 = _startY + lengthdir_y(_distance, _direction2);
		
		draw_line(_startX, _startY, _endX1, _endY1);
		draw_line(_startX, _startY, _endX2, _endY2);
		
		draw_set_color(c_white);
	}
}