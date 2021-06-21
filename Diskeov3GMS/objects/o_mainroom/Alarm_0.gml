if(global.firstsuccess) && !(lastv_n > global.app_ver)
{
global.fade_out = true;
if (global.fade_alpha >= 1)
{
	room_goto(rm_txt_st);
}
} 
alarm[0] = 5;