/// @description Insert description here

// Inherit the parent event
event_inherited();

// Menu parameters
menuTargetX = guiMarginX;

// Main Page Items
enum MainMenuItem
{
	Quit,
	Fullscreen,
	Play
}

menuItem[MainMenuItem.Play] = "Play";
menuItem[MainMenuItem.Fullscreen] = "Fullscreen";
menuItem[MainMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 2;
fullScreenItemIndex = MainMenuItem.Fullscreen;