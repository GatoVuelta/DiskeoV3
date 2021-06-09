//Shade
draw_sprite_ext(s_prvw_shade, 0, x-x_threshold, y, 1, 1, 0, global.UI_PRVW_shade, 1-init_alpha);
//Background
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_txtbx_bg_focused, 1-init_alpha);
//Topsquare
draw_sprite_ext(s_prvw_topsq, 0, x-x_threshold, y-(sprite_height/2), 1, 1, 0, c_black, 1-init_alpha);

//TabText
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_UniSans_TabTtle);
draw_set_alpha(1-init_alpha);
draw_text((x+175)-x_threshold, y-16, tab_text);


//Reset
draw_set_halign(-1);
draw_set_valign(-1);