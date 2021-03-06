/// @description MainMenuButtonActionsController

switch (menuCurrentAction)
{
	case MainMenuItem.Play:
		menuTargetX = menuFoldedX;
		
		if (menuX < menuFoldedX * 0.75)
		{
			currentState = InterfaceState.TransitionOut;
		}
	break;
	
	case MainMenuItem.Fullscreen:
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
	
	case MainMenuItem.Quit:
		game_end();
	break;
}
