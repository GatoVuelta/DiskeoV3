///@param x
///@param y
///@param height
///@param text
///@param alpha

function scr_tooltip_up(){
	
	//Base
	var antc = draw_get_color();
	
	//Init
	draw_set_font(f_Whitney_Bold_Tooltip0);
	var _x = argument0;
	var _y = argument1;
	var _h = argument2;
	var _t = argument3;
	var _a = argument4;
	var _hs = 12;
	var _w = string_width(_t)+(_hs*2);
	
	//General
	draw_set_alpha(_a);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//Square
	draw_set_color(global.UI_tooltip_bg);
	draw_roundrect_ext(_x-(_w/2), _y-(_h/2), _x+(_w/2), _y+(_h/2), 10, 10, false);
	
	//Text
	draw_set_color(global.UI_tooltip_txt);
	draw_text(_x, _y, _t);
	
	//Corner
	draw_sprite_ext(s_tooltip_c_up, 0, _x, _y-(_h/2)+1, 1, 1, 0, global.UI_tooltip_bg, _a);
	
	//Reset
	draw_set_color(antc);
	
}