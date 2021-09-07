if (element_enable)
{
	global.fade_out = true;
	global.overlay = false;
	o_mainroom.lastv_n = global.app_ver;
	
	global.firstsuccess = true;
	
	with (caller.my_btn0){fade_out = true; init_x_threshold = -100}
	with (caller.my_btn1){fade_out = true; init_x_threshold = -100}
}