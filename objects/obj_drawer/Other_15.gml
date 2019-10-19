/// @description FlashShaderHandler

//Parameters
var _shader = shd_flash;
var _shaderAlpha = shader_get_uniform(_shader, "u_alpha");

//Sequence
gpu_set_blendmode(bm_add);
with (obj_base) 
{
	if ((visible) && sprite_index != noone)
	{
		shader_set(_shader);
		shader_set_uniform_f(_shaderAlpha, flashPower);
		draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, flashColour, image_alpha);
		shader_reset();
	}
}
gpu_set_blendmode(bm_normal);