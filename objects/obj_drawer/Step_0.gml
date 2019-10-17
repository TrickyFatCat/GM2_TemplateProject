/// @description DrawListController

if (instance_exists(obj_base))
{
	DrawListHandler(drawListSortable);
	DrawListHandler(drawListUnsortable);
	
}

if (surface_exists(surfaceShadows))
{
	sync_surface(surfaceShadows);
}