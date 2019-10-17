/// @description Insert description here

switch (menuCurrentAction)
{
	case PauseMenuItem.Return:
		hudCurrentState = HUDState.PauseOut;
		menuCurrentAction = noone;
	break;
	
	case PauseMenuItem.Fullscreen:
		var _isFullscreen = window_get_fullscreen();
		
		if (!_isFullscreen)
		{
			window_set_fullscreen(true);
			
			with (obj_displayManagerPC)
			{
				resolutionZoom = resolutionZoomMax;
				UpdateResolution;
			}
		}
		else
		{
			window_set_fullscreen(false);
			with (obj_displayManagerPC)
			{
				resolutionZoom = max(resolutionZoomMax - 1);
				UpdateResolution;
			}
		}
		
		menuCurrentAction = noone;
	break;
	
	case PauseMenuItem.Quit:
		game_end();
	break;
}