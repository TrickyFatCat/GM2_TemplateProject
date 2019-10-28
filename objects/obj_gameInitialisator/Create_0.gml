/// @description CreateNecessaryObjects

pcVersion = true;

global.TimeFactor = 1;

var _array = [];

_array[0] = obj_displayManagerPC;
_array[1] = obj_inputMethodManager;
_array[2] = obj_gameManager;
_array[3] = obj_battleStateHandler;
_array[4] = obj_camera;
_array[5] = obj_drawer;
_array[6] = obj_gameDataHandler;
_array[7] = obj_gifRecorder;

var _length = array_length_1d(_array);

for (var i = 0; i < _length; i++)
{
	instance_create_layer(0, 0, layer, _array[i]);
}

room_goto(rm_mainmenu);