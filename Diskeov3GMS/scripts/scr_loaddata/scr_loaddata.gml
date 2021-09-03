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
if !(directory_exists(game_save_id+"\themes")){directory_create("themes")};
if !(directory_exists(game_save_id+"\presences")){directory_create("presences")};

//-> Create default File, whatever it exists or not
var _path = game_save_id + "/presences" + "/default.json";
var _txtopened = file_text_open_write(_path);
var _txt2write = "{\n    \"asset_type\": \"Presence\",\n    \"ver\": 0.1,\n    \"content\": {\n        \"info\": {\n            \"appID\": \"765725484779700224\",\n            \"appName\": \"Check my status\",\n            \"description\": \"This is the default file for Diskeo\"\n        },\n        \"text\": {\n            \"line1\": \"This is my first line of text!\",\n            \"line2\": \"This will be the second...\"\n        },\n        \"pictures\": {\n            \"large\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Diskeo (Leave blank to disallow)\"\n            },\n            \"small\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Beta 1 (Leave blank to disallow)\"\n            }\n        },\n        \"buttons\": {\n            \"1\": {\n                \"enable\": true,\n                \"text\": \"This is a button\",\n                \"link\": \"http://komodroid.com/\"\n            },\n            \"2\": {\n                \"enable\": true,\n                \"text\": \"Another button\",\n                \"link\": \"http://komodroid.com/diskeo\"\n            }\n        }\n    }\n}";
file_text_write_string(_txtopened, _txt2write);
file_text_close(_txtopened);

var _path = game_save_id + "/kmd_ipresence.sh";
var _txtopened = file_text_open_write(_path);
var _txt2write = string("#!/bin/sh\n\nFILE=`zenity --file-selection --file-filter=\"*.json\" --title=\"Select a File\"`\n\ncase $? in\n         0)\n         	cp $FILE ")+string(game_save_id)+string("presences/;;\n         1)\n                zenity --warning --text=\"No file was selected :/\";;\n        -1)\n                zenity --error--text=\"Unexpected error\";;\nesac");
file_text_write_string(_txtopened, _txt2write);
file_text_close(_txtopened);

if (os_type == os_linux)
{
	execute_shell("echo \"++++++ Initializing ++++++\"", false);
	execute_shell("chmod +x " + game_save_id + "kmd_ipresence.sh ", false);
	var _tranf_cmd = "sed -i -e \'s/\\r$//\'";
	execute_shell(_tranf_cmd + " " + game_save_id + "kmd_ipresence.sh", false);
	execute_shell("echo \"++++++++++ Done +++++++++++\"", false);
}

//-> Read and apply default values
scr_pres_readfile("default.json");

//--> Info
global.appIDto = pres_info_appID;
global.input_fline_text = pres_content_line1;
global.input_sline_text = pres_content_line2;
//--> Pictures
global.lpic_key = pres_content_pic1_key;
global.l_tooltip = pres_content_pic1_tooltip;
global.spic_key = pres_content_pic2_key;
global.s_tooltip = pres_content_pic2_tooltip;
//--> Buttons
global.presence_button1_enable = pres_content_btn1_enable;
global.presence_button1_text = pres_content_btn1_text;
global.presence_button1_link = pres_content_btn1_link;
global.presence_button2_enable = pres_content_btn2_enable;
global.presence_button2_text = pres_content_btn2_text;
global.presence_button2_link = pres_content_btn2_link;

}
}
