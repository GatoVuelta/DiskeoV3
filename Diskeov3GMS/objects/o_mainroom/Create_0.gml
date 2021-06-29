alarm[0] = room_speed*1;
alarm[1] = room_speed*10;
image_xscale = 0.5;
image_yscale = image_xscale;

x = room_width/2;
y = room_height/2;

//Define app version
global.app_ver = 3;
global.firstsuccess = false;

lastv_n = global.app_ver;
lastv_m = "false";

//Get latest version
get_request = http_get("https://api.npoint.io/f4f691ca862af6eb7855");

//Define presence ID
global.appIDto = "765725484779700224"
global.lastusedappID = global.appIDto;

global.hassbanner = false;

//Define preview props
global.userid_nick = "Loading";
global.userid_disc = "0000";
global.userid_banner_color = -1;