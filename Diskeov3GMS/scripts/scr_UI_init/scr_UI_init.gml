// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_UI_init(){
	
	//MSGBoxes
	global.UI_msgbx_shade = make_color_hex("000000");
	global.UI_msgbx_bg = make_color_hex("18191c");
	
	//Interruptions
	global.interruption0 = false;
	
	//General
	global.UI_general_primary = make_color_hex("5865f2");
	global.UI_general_secondary = make_color_hex("18191c");
	global.UI_general_terciary = make_color_hex("71757c");
	
	//Left menu
	global.UI_element_leftmenu_bg = global.UI_general_secondary;
	global.UI_element_leftmenu_container = make_color_hex("292b2f");
	global.UI_element_leftmenu_section = global.UI_general_terciary;
	
	//LMButtons
	global.UI_LMbtn_unfocused_bg = make_color_hex("40444b");
	global.UI_LMbtn_focused_bg = make_color_hex("5865f2");
	global.UI_LMbtn_active_bg = make_color_hex("5865f2");
	
	//Preview
	global.UI_PRVW_shade = c_black;
	global.UI_PRVW_bg = make_color_hex("18191c");
	global.UI_PRVW_topsquare = c_black;
	global.UI_PRVW_playingtext = make_color_hex("b5b7ba");
	global.UI_PRVW_separator = make_color_hex("252628");
	if (global.userid_banner_color == -1)
	{
		global.userid_banner_color = global.UI_PRVW_topsquare;
	}
	
	//Window dragger
	global.UI_windragger_focused = global.UI_general_secondary;
	global.UI_windragger_unfocused = make_color_hex("52585f");
	global.UI_windragger_element_focus_indicator = make_color_hex("36393f");
	global.UI_windragger_element_focus_indicator_alt = make_color_hex("ed4245");
	
	//Text boxes
	global.UI_txtbx_textsel = global.UI_general_primary;
	global.UI_txtbx_bg_focused = make_color_hex("40444b");
	global.UI_tab_inactive = make_color_hex("242b66");
	global.UI_txtbx_bg_unfocused = make_color_hex("40444b");
	global.UI_txtbx_bd = global.UI_general_primary;
	
	//ScrollabeArea
	global.UI_scrll_scrollbar_bg = make_color_hex("2f3136"); 
	global.UI_scrll_scrollbar = make_color_hex("202225"); 	
	
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