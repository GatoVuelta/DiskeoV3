if (ds_map_find_value(async_load, "id") == app_assets_request)
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
	
	assets_list = ds_map_find_value(json_data, "default");
	var l_size = ds_list_size(assets_list);
	show_debug_message(string("list size is: ")+string(l_size));
	
	//Add to dropwdown list
	for (var n = 0; n < l_size; n++;)
	{
		var asset_map = ds_list_find_value(assets_list, n);
		var asset_name = ds_map_find_value(asset_map, "name");
		dropdown_add(global.picdw, asset_name)
	}


map_ready = true;

} else 
{
	//nothing

}
}