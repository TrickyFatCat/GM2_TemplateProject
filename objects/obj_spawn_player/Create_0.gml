/// @description Insert description here

// Inherit the parent event
event_inherited();

global.Player = instance_create_layer(x, y, "entities", obj_player);
SetCameraMode(CameraMode.FollowPointPeek);
global.Player.currentState = PlayerState.Spawn;
global.Player.drawAlpha = 0;