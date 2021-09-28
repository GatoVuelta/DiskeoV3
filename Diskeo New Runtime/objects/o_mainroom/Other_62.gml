//if !(global.firstsuccess)
if (ds_map_find_value(async_load, "id") == get_request)
{
//Fetch data
fetched_data = async_load[? "result"];
http_status = async_load[? "http_status"];
status = async_load[? "status"];
show_debug_message(string("fetched_data: ") + string(fetched_data));
show_debug_message(string("status: ") + string(status));
show_debug_message(string("http_status: ") + string(http_status));

//If fetching success
if (http_status == 200) && !(fetched_data = "") && (status == 0)
{
json_data = json_decode(fetched_data);
lastv = json_data[? "lastver"];

lastv_n = lastv[? "numb"];
lastv_m = lastv[? "mandatory"];
lastv_whatsnew = lastv[? "whatsnew"];

if(lastv_n > global.app_ver)
{
	if(lastv_m == "true")
	{
		global.overlay = true;
		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_update_m);
	} else {
		global.overlay = true;
		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_update_o);
	}
} else
{
	global.firstsuccess = true;
}} else if (status == 1)
{
	//nothing
} else
{
	if !(instance_exists(o_MSG_Box_badsrv_n))
	{
		global.overlay = true;
		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_badsrv_n);
	}
}
} 
