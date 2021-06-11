if (global.hassprite)
{
if (!surface_exists(mask_surface)) {
    // create the mask-surface, if needed
    mask_surface = surface_create(600, 600);
    surface_set_target(mask_surface);
    draw_clear(c_black);
    gpu_set_blendmode(bm_subtract);
    // cut out shapes out of the mask-surface:
    draw_sprite(sprite_index, 0,450, 450)
    //
	//draw_surface(mask_surface, 0, 0);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
}
if (!surface_exists(clip_surface)) {
    // create the clip-surface, if needed
    clip_surface = surface_create(600, 600);
}
// start drawing:
surface_set_target(clip_surface);
draw_clear_alpha(c_black, 0);
// draw things relative to clip-surface:
draw_sprite_ext(global.userid_spr, 0, 450, 450, 0.8, 0.8, 0, c_white, 1);
// cut out the mask-surface from it:
gpu_set_blendmode(bm_subtract);
draw_surface(mask_surface, 0, 0);
gpu_set_blendmode(bm_normal);
// finish and draw the clip-surface itself:
surface_reset_target();
draw_surface_ext(clip_surface, 210, -y, 1, 1, 0, c_white, 1-global.fade_alpha);

}