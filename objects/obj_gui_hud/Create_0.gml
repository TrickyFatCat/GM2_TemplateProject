/// @description Insert description here

// Inherit the parent event
event_inherited();

// User events


// States
enum HUDState
{
	Active,
	PauseIn,
	Pause,
	PauseOut
}

hudCurrentState = HUDState.Active;

// Pause Menu Items
menuY = guiHeight - guiMarginY;
menuTargetX = menuFoldedX;
menuIsActive = false;

// Main Page Items
enum PauseMenuItem
{
	Quit,
	Fullscreen,
	Return
}

menuItem[PauseMenuItem.Return] = "Return";
menuItem[PauseMenuItem.Fullscreen] = "Fullscreen";
menuItem[PauseMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 2;
fullScreenItemIndex = PauseMenuItem.Fullscreen;