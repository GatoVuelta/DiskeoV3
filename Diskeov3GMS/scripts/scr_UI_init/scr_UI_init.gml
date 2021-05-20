// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_UI_init(){
	
	//Window dragger
	global.UI_windragger_focused = make_color_hex("202225");
	global.UI_windragger_unfocused = make_color_hex("52585f");
	global.UI_windragger_element_focus_indicator = make_color_hex("36393f");
	global.UI_windragger_element_focus_indicator_alt = make_color_hex("ed4245");
	
	//UI Elements
	global.UI_element_regular = make_color_hex("52585f"); //NO
	global.UI_element_disabled = make_color_hex("464950");
	global.UI_element_focused = make_color_hex("ffffff");
	global.UI_element_unfocused = make_color_hex("8c8e90f");
	
	//Main Background
	global.UI_mainbg = make_color_hex("36393f");
	
	//-> Apply code-level UI
	global.MainBG_ID = layer_background_get_id("MainBG_layer");
	layer_background_blend(global.MainBG_ID, global.UI_mainbg);

}