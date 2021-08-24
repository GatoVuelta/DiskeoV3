//Overlay
draw_set_alpha(overlay_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

//Icon
if (global.overlay_init)
{
	draw_sprite_ext(spr_pfpcload_tr, oButtonUpdateDRP.load_subimg, room_width/2, room_height/2, 1, 1, 0, global.UI_general_primary, 1);
}