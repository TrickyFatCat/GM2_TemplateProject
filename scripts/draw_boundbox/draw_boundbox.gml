/// @description draw_boundbox(colour);
/// @param colour

// Displays the mask_index- great for debugging

var _colour = argument0;

draw_set_color(_colour);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
draw_set_color(c_white);
