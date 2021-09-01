//Window dragger color
if (window_has_focus())
{
image_blend = global.UI_windragger_focused;
} else image_blend = global.UI_windragger_unfocused;

draw_sprite_ext(s_wdg_bar, 0, x, y, 1, 1, 0, image_blend, 1-global.fade_alpha)

//Diskeo logo
draw_sprite_ext(s_wdg_diskeologo, 0, (room_width/2)+60, 15, 1, 1, 0, global.UI_general_terciary, 1);
//GradientBG
draw_sprite_ext(s_GradientBG, 0, (room_width/2)+60, 22, 1, 1, 0, global.UI_general_secondary, 1-global.fade_alpha);
//BIG TITLE
draw_set_color(global.UI_general_terciary);
draw_set_alpha(1-global.fade_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(f_UniSans_Title);
draw_text((room_width/2)+60, 80, global.room_title);

//Restart drawing
draw_set_halign(-1);
draw_set_valign(-1);