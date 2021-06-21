image_alpha = init_alpha;

//Shade
draw_sprite_ext(s_msgbx_sh0, 0, x, y, 1, 1, 0, global.UI_msgbx_shade, image_alpha);

//Background
image_blend = global.UI_msgbx_bg;
draw_self();

//Separator
draw_sprite_ext(s_msgbx_sep0, 0, x, y-55, 1, 1, 0, global.UI_PRVW_separator, image_alpha);

//Basic text stuff
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_alpha(image_alpha);

//Title
draw_set_font(f_UniSans_MsgTitle);
draw_text(x, y-80, msg_title);

//Description
draw_set_font(f_Arial_13_Msg_desc);
draw_text(x, y, msg_description);

//Reset
draw_set_halign(-1);
draw_set_valign(-1);
