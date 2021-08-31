//SliderStuff
yy = 0;
grab = false;
percentage = 100;
mousegrab = false;
wheelgrab = false;

x0 = 0;
y0 = 0;
x1 = 0;
y1 = 0;

//DefineBlend
image_blend = global.UI_scrll_scrollbar;

//-> Check and create Directories
//if !(directory_exists(game_save_id+"\themes")){directory_create(game_save_id+"\themes")};
if !(directory_exists(game_save_id+"\presences")){directory_create(game_save_id+"\presences")};

//-> Check and create Files
if !(file_exists(game_save_id + "/presences" + "/default.json"))
{
	var _path = game_save_id + "/presences" + "/default.json";
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
file = file_find_first(game_save_id + "/presences/*.json", 0);
ds_list_add(global.presences_files_list, file);
do {
	file = file_find_next();
	if !(file == "")
	{
		ds_list_add(global.presences_files_list, file);
		show_debug_message("File found!: "+file);
	}
} until (file == "")
file_find_close();;
show_debug_message(string(ds_list_size(global.presences_files_list))+string(" files found in the specified path!"));

//-> Reorder putting Default.json at the top
var _defaultpos = ds_list_find_index(global.presences_files_list, "default.json");
ds_list_delete(global.presences_files_list, _defaultpos)
ds_list_insert(global.presences_files_list, 0, "default.json")