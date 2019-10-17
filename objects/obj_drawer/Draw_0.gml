/// @description ObjectsDrawSequence

if (instance_exists(obj_base))
{
	DrawFloorEffects;
	
	DrawFloorObjects;
	
	DrawUnsortable(DrawPosition.OnFloor);

	DrawShadow;

	DrawSortableObjects;

	DrawDissolve;

	DrawFlash;
	
	DrawUnsortable(DrawPosition.OnAll);
}