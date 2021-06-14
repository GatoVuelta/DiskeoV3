if !(global.firstsuccess)
{
//Fetch data
fetched_data = async_load[? "result"];
status = async_load[? "http_status"];
show_debug_message(string("result: ") + string(fetched_data));
show_debug_message(string("status: ") + string(status));

//If fetching success
if (status == 200)
{
json_data = json_decode(fetched_data);
lastv = json_data[? "lastver"];

var lastv_n = lastv[? "numb"];
var lastv_m = lastv[? "mandatory"];

if(lastv_n > global.app_ver)
{
	if(lastv_m == "true")
	{
		mandatory_msg = " . And it's mandatory to update it"
	} else {mandatory_msg = ", but  it's not mandatory to update."}
	
//Update message
show_message(string("Your version is ")
+string(global.app_ver)
+string(" and server reports version ")
+string(lastv_n)
+string(mandatory_msg));

}


//show_debug_message(string("msgid: ") + string(msgid));
//show_debug_message(string("stars: ") + string(stars));

global.firstsuccess = true;
}
}