function scr_loaddata(){
//CHECK FOR GENERAL SETTINGS
{
	//Try to load at first
	fetched_map = ds_map_secure_load(working_directory+"\data.komodroid");
	
	//Check if exists
	if (ds_exists(fetched_map, ds_type_map))
	{
		//Success
		show_debug_message("file exists");
	} else 
	{
		//Defaults	
		//-> Create map
		show_debug_message("file doesn't exist");
		fetched_map = ds_map_create();
		ds_map_add(fetched_map, "saludo", "predeterminado, creado ahora");
		//-> Save created map
		ds_map_secure_save(fetched_map, "data.komodroid");
		//-> Load created map
		fetched_map = ds_map_secure_load("data.komodroid");
	}

show_debug_message(ds_map_find_value(fetched_map, "saludo"));
//Vars got defined, time to clean memory.
ds_map_destroy(fetched_map);

}
//CHECK FOR DIRECTORIES AND FILES
{
//-> Check and create Directories
if !(directory_exists(game_save_id+"\Themes")){directory_create(game_save_id+"\Themes")};
if !(directory_exists(game_save_id+"\Presences")){directory_create(game_save_id+"\Presences")};

//-> Check and create Files
if !(file_exists(game_save_id + "/Presences" + "/Default.json"))
{
	var _path = game_save_id + "/Presences" + "/Default.json";
	var _txtopened = file_text_open_write(_path);
	var _txt2write = "{\n    \"asset_type\": \"Presence\",\n    \"ver\": 0.1,\n    \"content\": {\n        \"info\": {\n            \"appID\": \"765725484779700224\",\n            \"appName\": \"Check my status\",\n            \"description\": \"This is the default file for Diskeo\"\n        },\n        \"text\": {\n            \"line1\": \"This is my first line of text!\",\n            \"line2\": \"This will be the second...\"\n        },\n        \"pictures\": {\n            \"large\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Diskeo (Leave blank to disallow)\"\n            },\n            \"small\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Beta 1 (Leave blank to disallow)\"\n            }\n        },\n        \"buttons\": {\n            \"1\": {\n                \"enable\": true,\n                \"text\": \"This is a button\",\n                \"link\": \"http://komodroid.com/\"\n            },\n            \"2\": {\n                \"enable\": true,\n                \"text\": \"Another button\",\n                \"link\": \"http://komodroid.com/diskeo\"\n            }\n        }\n    }\n}";
	file_text_write_string(_txtopened, _txt2write);
	file_text_close(_txtopened);
	show_debug_message("----- defualt json doesn't exist!");
} else {
	show_debug_message("+++++ defualt json exists");
}

//-> Check other files [PRESENCES]
global.presences_files_list = ds_list_create();
file = file_find_first(game_save_id + "/Presences/*.json", 0);
ds_list_add(global.presences_files_list, file);
do {
	file = file_find_next();
	if !(file == "")
	{
		ds_list_add(global.presences_files_list, file);
		show_debug_message("File found!: "+file);
	}
} until (file == "")
file_find_close();
show_debug_message(string(ds_list_size(global.presences_files_list))+string(" files found in the specified path!"));

//-> Reorder putting Default.json at the top
global.presences_files_list_defaultpos = ds_list_find_index(global.presences_files_list, "Default.json");

//TEST
//var file_to_open = ds_list_find_value(global.presences_files_list, global.presences_files_list_defaultpos);
//opened_file = file_text_open_read(game_save_id + "/Presences/" + file_to_open);
//var __textString__ = "";
//while (file_text_eof(opened_file) == false) 
//{
//	__textString__+= file_text_readln(opened_file);
//}
//file_text_close(opened_file);

//var _decodedjson = json_decode(__textString__);
//var _content_map = ds_map_find_value(_decodedjson, "content");
//_asset_type = ds_map_find_value(_decodedjson, "asset_type");

////Check asset type
//if (_asset_type == "Presence")
//{
//	var _info_map = ds_map_find_value(_content_map, "info");
//	var _text_map = ds_map_find_value(_content_map, "text");

//appname_frommap = ds_map_find_value(_info_map, "appName");
//line1_frommap = ds_map_find_value(_text_map, "line1");
////dshow_message_async(appname_frommap);
//show_message(line1_frommap);
//} else {
//	show_error("\""+file_to_open+"\" is not a presence asset.\nIt wasn't saved and/or edited properly.",false);
//}
}
}
