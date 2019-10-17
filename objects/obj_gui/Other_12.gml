/// @description TransitonOutSequence

// Parameters
var _transitionSpeedOut = max((1 - transitionFactor) / 10, 0.005);

// Sequence
if (transitionFactor != 1)
{
	transitionFactor = approach(transitionFactor, 1, _transitionSpeedOut);
}
else
{
	var _sortableListEmpty = ds_list_empty(obj_drawer.drawListSortable);
	var _unsortableListEmpty = ds_list_empty(obj_drawer.drawListUnsortable);
	
	if (!_sortableListEmpty)
	{
		ds_list_clear(obj_drawer.drawListSortable);
	}
	
	if (!_unsortableListEmpty)
	{
		ds_list_clear(obj_drawer.drawListUnsortable);
	}
	
	room_goto(nextRoom);
}