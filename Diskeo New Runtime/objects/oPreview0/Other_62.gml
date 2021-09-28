/// @description check if we can use the avatar.
//if (!global.hassprite)
//{
if (async_load[? "status"] >= 0) 
{
	//Small
	if (async_load[? "id"] == s_request)
	{
		fetched_data = async_load[? "result"];
		http_status = async_load[? "http_status"];
		status = async_load[? "status"];
		show_debug_message(string("fetched_data: ") + string(fetched_data));
		show_debug_message(string("status: ") + string(status));
		show_debug_message(string("http_status (async_htttp_preview): ") + string(http_status));
	}
}
//}