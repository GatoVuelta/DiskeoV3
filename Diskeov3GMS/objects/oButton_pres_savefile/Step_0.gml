spr_id = -1;
//Focus indicator
if (position_meeting(mouse_x, mouse_y, id))
{
	//Hover
	focus = true;
	
	//Click
	if (mouse_check_button_pressed(mb_left))
	{
		var _fillerandom = round((get_timer()/10000));
		var _randomizedfile = string("Presence ")+string(_fillerandom);
		var _filename = get_string("Please name this file, if it's the same name than any other file already saved, it will be overwritted.", _randomizedfile);
		
		if (_filename != "")
		{
			//Write
			var _path = game_save_id + "/presences/" + _filename + ".json";
			var _txtopened = file_text_open_write(_path);
			var _txt2write = "{\n    \"asset_type\": \"Presence\",\n    \"ver\": 0.1,\n    \"content\": {\n        \"info\": {\n            \"appID\": \"" + global.appIDto + "\",\n            \"appName\": \"" + "" + "\",\n            \"description\": \"This is the default file for Diskeo\"\n        },\n        \"text\": {\n            \"line1\": \"This is my first line of text!\",\n            \"line2\": \"This will be the second...\"\n        },\n        \"pictures\": {\n            \"large\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Diskeo (Leave blank to disallow)\"\n            },\n            \"small\": {\n                \"enable\": true,\n                \"last_key\": \"dsk_dsklogo\",\n                \"tooltip\": \"Beta 1 (Leave blank to disallow)\"\n            }\n        },\n        \"buttons\": {\n            \"1\": {\n                \"enable\": true,\n                \"text\": \"This is a button\",\n                \"link\": \"http://komodroid.com/\"\n            },\n            \"2\": {\n                \"enable\": true,\n                \"text\": \"Another button\",\n                \"link\": \"http://komodroid.com/diskeo\"\n            }\n        }\n    }\n}";
			file_text_write_string(_txtopened, _txt2write);
			file_text_close(_txtopened);
			//Donemark
			instance_create_layer(x, y, "DoneMarks0",oDoneMark0);		
		} else {
			//Cancelled
			show_message("File wasn't saved.");
		}
	}

} else 
	{
		focus = false;
	}

//Slow border fading
if (focus)
{
	if (border_alpha <= 0.9)
	{
		border_alpha += 0.1;	
	}
} else if (border_alpha >= 0.1)
	{
		border_alpha -= 0.1;
	}

//Fade in effect
if (fade_in)
{
	if (x_threshold >= fin_speed)
	{
	x_threshold -= fin_speed;
	init_alpha = ((x_threshold/init_x_threshold));
	} else fade_in = fin_speed;
}
//Fade out effect
if (fade_out)
{
	
	if (init_x_threshold <= -fout_speed)
	{
	init_x_threshold += fout_speed;
	x_threshold -= fout_speed;
	init_alpha = 1-(init_x_threshold/(x_threshold+init_x_threshold));
	} else fade_out = false;
}


//If overlay
if ((global.overlay) && (element_enable))
{
	element_enable = false;
} else if (!global.overlay) && (element_default_enable)
{
	element_enable = true;
}

//Loading animation
if (load_subimg < (total_subimgs-1)) /*&& (draw_load)*/
{
	load_subimg += 1;
} else {load_subimg = 0}