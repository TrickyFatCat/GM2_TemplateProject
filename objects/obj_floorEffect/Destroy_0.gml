/// @decription Draw effect on floor surface

var _surface = obj_drawer.surfaceFloorEffects;

if (surface_exists(_surface))
{
	surface_set_target(_surface);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, c_gray, image_alpha);
	
	surface_reset_target();
}
else
{
	_surface = surface_create(room_width, room_height);
}