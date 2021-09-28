if (!ever_clicked_clicking)
{
global.fade_out = true;
global.overlay = false;
o_mainroom.lastv_n = global.app_ver;

global.firstsuccess = true;

	with (caller.my_btn2){fade_out = true; init_x_threshold = -100}
	with (caller.my_btn3){fade_out = true; init_x_threshold = -100}
}