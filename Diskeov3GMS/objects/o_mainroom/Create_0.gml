alarm[0] = room_speed*1;
alarm[1] = room_speed*10;
image_xscale = 0.5;
image_yscale = image_xscale;

x = room_width/2;
y = room_height/2;

//Define app version
global.app_ver = 10;
global.app_ver_name = "Beta 1.0 (0.1.0)";
global.firstsuccess = false;
global.unique_md5_id = fingerprint_md5();

lastv_n = global.app_ver;
lastv_m = "false";

//!<DEBUG!>!
global.debugmode0 = false;
loaded_picsid = false;

//Get latest version
if !(global.debugmode0)
{
	get_request = http_get("https://api.npoint.io/f4f691ca862af6eb7855");
}

//Define presence ID
global.appIDto = "765725484779700224"
global.lastusedappID = global.appIDto;

global.hassbanner = false;

#region Define preview props

//User
global.userid_nick = "Loading";
global.userid_disc = "0000";
global.userid_banner_color = -1;

//AppProps
global.default_overlay_init = true;
global.overlay_init = false;
global.forceclick = false;
global.asset_select_l = true;
global.asset_select_s = false;

global.scroll_surface_x = 0;
global.scroll_surface_y = 0;
global.scroll_pres_surface_x = 0;
global.scroll_pres_surface_y = 0;

global.last_heading_tab = 1;

//CardProps
global.card_icount = 0;
global.card_pres_icount = 0;

//<-Section disabled due to automatic file loading (scr_loaddata)->//
{
//Inputs-Outputs
//global.input_fline_text = "Line 1 (Leave blank to disallow)";
//global.input_sline_text = "Line 2 (Leave blank to disallow)";
global.heading_dw_text = "Check my status";
//global.s_tooltip = "Alpha9 (Leave blank to disallow)"
//global.l_tooltip = "Diskeo (Leave blank to disallow)"

//StatusPictures
//global.lastused_spic_key = "dsk_dsklogo";
//global.spic_key = "dsk_dsklogo";
global.spic_id = "853048028062547999";

//global.lastused_lpic_key = "dsk_dsklogo";
//global.lpic_key = "dsk_dsklogo";
global.lpic_id = "853048028062547999";

//Preview
//global.presence_button1_enable = true;
//global.presence_button1_text = "Button1";
//global.presence_button1_link = "http://komodroid.com/";

//global.presence_button2_enable = true;
//global.presence_button2_text = "Button2";
//global.presence_button2_link = "http://komodroid.com/";
}
//<-------------------------------------------------------------->//

global.presence_button_selected = 1;

global.timezone_delay = -5;

global.start_timestamp_type = "current";
var initial_date = date_create_datetime(1970,2,1,0,0,0)
var epoch = date_second_span(initial_date,date_create_datetime(2021,7,10,18-global.timezone_delay,0,0))-86400;
global.start_timestamp = epoch;


//global.start_timestamp = 0;

//var epoch = date_second_span(date_create_datetime(1970,1,1,0,0,0),date_create_datetime(2021,7,11,22,0,0));
global.end_timestamp = 0;

global.show_timestamp = true;


//ExperimentalSwitch

#region EXPERIMENT: NODE.JS

global.experiment_nodejs = false;
global.clientsecret_to = "vBCWL1WEP4f-x_nJhXn-Pr1bWaBD_xH4";
global.lastused_clientsecret = "vBCWL1WEP4f-x_nJhXn-Pr1bWaBD_xH4";

#endregion

#endregion

//AssetsReader
global.asset_read_count = 0;
global.asset_read_count_pres = 0;


if (global.debugmode0)
{
	room_goto(rm_txt_st);
}