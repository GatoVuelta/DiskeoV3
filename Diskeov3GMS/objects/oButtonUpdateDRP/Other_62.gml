if (ds_map_find_value(async_load, "id") == img_request)
{
//Fetch data
fetched_data = async_load[? "result"];
http_status = async_load[? "http_status"];
status = async_load[? "status"];

show_debug_message(string("fetched_data: ") + string(fetched_data));

//If fetching success
if (http_status == 200) && (fetched_data != "") && (status == 0)
{
json_data = json_decode(fetched_data);
root_colors = ds_map_find_value(json_data,"colors");
root_accent0 = ds_map_find_value(root_colors,"accent");
root_dominant0 = ds_map_find_value(root_colors,"dominant");

data_and_roots = true;

if (is_real(root_accent0))
{

root_accent_value = ds_list_find_value(root_accent0, 0);

root_accent_value_exists = true;

//show_debug_message(string("root_acces_map: ") + string(root_accent));
var red = ds_map_find_value(root_accent_value,"r");
var green = ds_map_find_value(root_accent_value,"g");
var blue = ds_map_find_value(root_accent_value,"b");

global.userid_banner_color = make_color_rgb(red, green, blue);

} else 
{
	//Another parameter
var red = ds_map_find_value(root_dominant0,"r");
var green = ds_map_find_value(root_dominant0,"g");
var blue = ds_map_find_value(root_dominant0,"b");

global.userid_banner_color = make_color_rgb(red, green, blue);
}

global.hassbanner = true;


//if(lastv_n > global.app_ver)
//{
//	if(lastv_m == "true")
//	{
//		global.overlay = true;
//		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_update_m);
//	} else {
//		global.overlay = true;
//		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_update_o);
//	}
//} else
//{
//	global.firstsuccess = true;
//}}else 
//{
//	if !(instance_exists(o_MSG_Box_badsrv_n))
//	{
//		global.overlay = true;
//		instance_create_layer(room_width/2, room_height/2, "LY_msg_boxes", o_MSG_Box_badsrv_n);
//	}
//}

}
}