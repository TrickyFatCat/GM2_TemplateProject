/// @description PlayerMenuControls

switch global.CurrentInput
{
	case InputMethod.Gamepad:
		keyMenuUp = gamepad_button_pressed(gp_axislv) < 0 || gamepad_button_pressed(gp_padu);
		keyMenuDown = gamepad_button_pressed(gp_axislv) > 0 || gamepad_button_pressed(gp_padd);
		keyMenuLeft = gamepad_button_pressed(gp_axislh) < 0 || gamepad_button_pressed(gp_padl);
		keyMenuRight = gamepad_button_pressed(gp_axislh) > 0 || gamepad_button_pressed(gp_padr);
		keyMenuAccept = gamepad_button_pressed(gp_face1);
		keyMenuBack = gamepad_button_pressed(gp_face2);
		keyPause = gamepad_button_pressed(gp_start);
	break;
	
	case InputMethod.KeyboardMouse:
		keyMenuUp = keyboard_check_pressed(ord("W"));
		keyMenuDown = keyboard_check_pressed(ord("S"));
		keyMenuLeft = keyboard_check_pressed(ord("A"));
		keyMenuRight = keyboard_check_pressed(ord("D"));
		keyMenuAccept = keyboard_check_pressed(vk_enter);
		keyMenuBack = gamepad_button_pressed(vk_backspace);
		keyPause = keyboard_check_pressed(vk_escape);
	break;
}