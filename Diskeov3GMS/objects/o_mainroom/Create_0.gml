alarm[0] = room_speed*1;
alarm[1] = room_speed*10;
image_xscale = 0.5;
image_yscale = image_xscale;

x = room_width/2;
y = room_height/2;

//Define app version
global.app_ver = 5;
global.firstsuccess = false;

lastv_n = global.app_ver;
lastv_m = "false";

//Get latest version
get_request = http_get("https://api.npoint.io/f4f691ca862af6eb7855");

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
global.forceclick = false;
global.asset_select_l = true;
global.asset_select_s = false;

global.scroll_surface_x = 0;
global.scroll_surface_y = 0;

//CardProps
global.card_icount = 0;

//Inputs-Outputs
global.input_fline_text = "Check this out!";
global.input_sline_text = "Hey";
global.heading_dw_text = "Check my status";

//StatusPictures
global.lastused_spic_key = "dsk_dsklogo";
global.spic_key = "dsk_dsklogo";
global.spic_id = "853048028062547999";

global.lastused_lpic_key = "dsk_dsklogo";
global.lpic_key = "dsk_dsklogo";
global.lpic_id = "853048028062547999";

//ExperimentalSwitch

#region EXPERIMENT: NODE.JS

global.experiment_nodejs = false;
global.clientsecret_to = "vBCWL1WEP4f-x_nJhXn-Pr1bWaBD_xH4";
global.lastused_clientsecret = "vBCWL1WEP4f-x_nJhXn-Pr1bWaBD_xH4";

#endregion

#endregion

//AssetsReader
global.asset_read_count = 0;