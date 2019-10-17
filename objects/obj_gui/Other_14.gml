/// @description InterfaceStepController

// Item ease in
menuX = Tween_Weighted(menuX, menuTargetX, menuAppearTime);
	
// Menu controls
if (menuIsActive)
{
	if (obj_gameManager.keyMenuUp)
	{
		menuActiveItem++;
		
		if (menuActiveItem >= menuItemsCount)
		{
			menuActiveItem = 0;
		}
	}
	
	if (obj_gameManager.keyMenuDown)
	{
		menuActiveItem--;
		
		if (menuActiveItem < 0)
		{
			menuActiveItem = menuItemsCount - 1;
		}
	}
	
	if (obj_gameManager.keyMenuAccept)
	{
		menuCurrentAction = menuActiveItem;
	}
}