//Draw self
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, global.UI_element_leftmenu_bg, 1-global.fade_alpha);
draw_set_alpha(1-global.fade_alpha);
draw_set_color(global.UI_element_leftmenu_section);
draw_set_font(f_mono0);
var _t = string(global.app_ver_name)+string(" - ver.rev ")+string(global.app_ver)+string(" - uuid: ")+string(global.unique_md5_id)+string(" - fps: "+string(fps_show));
draw_text(150, room_height-40, _t);