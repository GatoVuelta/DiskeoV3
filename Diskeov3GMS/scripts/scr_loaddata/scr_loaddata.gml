function scr_loaddata(){
//CHECK FOR GENERAL SETTINGS
{
	//Try to load at first
	enable_map_data = false;
if (enable_map_data)
{
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

}
//CHECK FOR DIRECTORIES AND FILES
{
//-> Check and create Directories
if !(directory_exists(game_save_id+"\Themes")){directory_create(game_save_id+"\Themes")};
if !(directory_exists(game_save_id+"\Presences")){directory_create(game_save_id+"\Presences")};

//-> Check and create Files
var _path = game_save_id + "/Presences" + "/Default.json";
var _txtopened = file_text_open_write(_path);
var _txt2write = "{\n    \"asset_type\": \"Presence\",\n    \"ver\": 0.1,\n    \"content\": {\n        \"info\": {\n            \"appID\": \"765725484779700224\",\n            \"appName\": \"Check my status\",\n            \"description\": \"This is the default file for Diskeo\"\n        },\n        \"text\": {\n            \"line1\": \"This is my first line of text!\",\n            \"line2\": \"This will be the second...\"\n        },\n        \"pictures\": {\n            \"large\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Diskeo (Leave blank to disallow)\"\n            },\n            \"small\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Beta 1 (Leave blank to disallow)\"\n            }\n        },\n        \"buttons\": {\n            \"1\": {\n                \"enable\": true,\n                \"text\": \"This is a button\",\n                \"link\": \"http://komodroid.com/\"\n            },\n            \"2\": {\n                \"enable\": true,\n                \"text\": \"Another button\",\n                \"link\": \"http://komodroid.com/diskeo\"\n            }\n        }\n    }\n}";
file_text_write_string(_txtopened, _txt2write);
file_text_close(_txtopened);
show_debug_message("----- defualt json doesn't exist!");

////-> Check other files [PRESENCES]
//global.presences_files_list = ds_list_create();
//file = file_find_first(game_save_id + "/Presences/*.json", 0);
//ds_list_add(global.presences_files_list, file);
//do {
//	file = file_find_next();
//	if !(file == "")
//	{
//		ds_list_add(global.presences_files_list, file);
//		show_debug_message("File found!: "+file);
//	}
//} until (file == "")
//file_find_close();
//show_debug_message(string(ds_list_size(global.presences_files_list))+string(" files found in the specified path!"));

////-> Reorder putting Default.json at the top
//global.presences_files_list_defaultpos = ds_list_find_index(global.presences_files_list, "Default.json");
}
}
