alarm[0] = room_speed*1;
image_xscale = 0.5;
image_yscale = image_xscale;

//Define app version
global.app_ver = 1;
global.firstsuccess = false;

//Get latest version
http_get("https://api.npoint.io/f4f691ca862af6eb7855");

//Define presence ID
global.appIDto = "765725484779700224"
global.lastusedappID = global.appIDto;

show_debug_message("testooooooooooooooooooooo");