/// @description Network Timeout
if(!global.firstsuccess) && !(instance_exists(o_MSG_Box_badsrv_n))
{
	show_debug_message("called from timeout");
	global.overlay = true;
	instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_badsrv_n);
}
