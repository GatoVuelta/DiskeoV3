//if !(global.firstsuccess)
if (ds_map_find_value(async_load, "id") == get_request)
{
//Fetch data
fetched_data = async_load[? "result"];
http_status = async_load[? "http_status"];
status = async_load[? "status"];
show_message(string("fetched_data: ") + string(fetched_data));
show_message(string("status: ") + string(status));
show_message(string("http_status: ") + string(http_status));

//If fetching success
if (http_status == 200) && !(fetched_data = "")
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
}

global.firstsuccess = true;

} else 
{
	//show_message(string("no valid fetched data, reattempting") + string("-") + string(fetched_data) + string("-"));
	get_request = http_get("https://api.npoint.io/f4f691ca862af6eb7855");
	global.overlay = true;
	instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_badsrv_n);
}
} else
{
	//show_message(string("There was an error contacting the server\nError code: ")+string(http_status));
	show_message(string("error after finding get request: ")+string(ds_map_find_value(async_load, "id")));
}