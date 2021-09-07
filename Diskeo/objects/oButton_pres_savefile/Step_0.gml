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
		var _name = get_string("Please give this file a name, if it's the same name than any other file already saved, it will be overwritted.", _randomizedfile);
		
		if (_name != "")
		{
			var _description = get_string("Please give this file a description, this can be empty.", "");
			//Normalize
			_name = string_replace_all(_name, "\"", "");
			_name = string_replace_all(_name, "/", "");
			_name = string_replace_all(_name, "\\", "");
			_description = string_replace_all(_description, "\"", "");
			//Write
			var _path = game_save_id + "/presences/" + _name + ".json";
			var _txtopened = file_text_open_write(_path);
			var _txt2write = string("{\n    ")+string("\u0022")+string("asset_type")+string("\u0022")+string(": ")+string("\u0022")+string("Presence")+string("\u0022")+string(",\n    ")+string("\u0022")+string("ver")+string("\u0022")+string(": 0.1,\n    ")+string("\u0022")+string("content")+string("\u0022")+string(": {\n        ")+string("\u0022")+string("info")+string("\u0022")+string(": {\n") + string("            \u0022") + 
			string("appID") + string("\u0022") + string(":") + string("\u0022") +
			string(global.appIDto) + 
			string("")+string("\u0022")+string(",\n            ")+string("\u0022")+string("appName")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(_name) + 
			string("")+string("\u0022")+string(",\n            ")+string("\u0022")+string("description")+string("\u0022")+string(":")+string("\u0022")+string("") + 
			string(_description) + 
			string("")+string("\u0022")+string("\n        },\n        ")+string("\u0022")+string("text")+string("\u0022")+string(": {\n            ")+string("\u0022")+string("line1")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.input_fline_text) + 
			string("")+string("\u0022")+string(",\n            ")+string("\u0022")+string("line2")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.input_sline_text) + 
			string("")+string("\u0022")+string("\n        },\n        ")+string("\u0022")+string("pictures")+string("\u0022")+string(": {\n            ")+string("\u0022")+string("large")+string("\u0022")+string(": {\n                ")+string("\u0022")+string("enable")+string("\u0022")+string(": true,\n                ")+string("\u0022")+string("last_key")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.lpic_key) + 
			string("")+string("\u0022")+string(",\n                ")+string("\u0022")+string("tooltip")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.l_tooltip) + 
			string("")+string("\u0022")+string("\n            },\n            ")+string("\u0022")+string("small")+string("\u0022")+string(": {\n                ")+string("\u0022")+string("enable")+string("\u0022")+string(": true,\n                ")+string("\u0022")+string("last_key")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.spic_key) + 
			string("")+string("\u0022")+string(",\n                ")+string("\u0022")+string("tooltip")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.s_tooltip) + 
			string("")+string("\u0022")+string("\n            }\n        },\n        ")+string("\u0022")+string("buttons")+string("\u0022")+string(": {\n            ")+string("\u0022")+string("1")+string("\u0022")+string(": {\n                ")+string("\u0022")+string("enable")+string("\u0022")+string(": ") + 
			string(global.presence_button1_enable) + 
			string(",\n                ")+string("\u0022")+string("text")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.presence_button1_text) + 
			string("")+string("\u0022")+string(",\n                ") + string("")+string("\u0022")+string("link")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.presence_button1_link) + 
			string("")+string("\u0022")+string("\n            },\n            ")+string("\u0022")+string("2")+string("\u0022")+string(": {\n                ")+string("\u0022")+string("enable")+string("\u0022")+string(": ") + 
			string(global.presence_button2_enable) + 
			string(",\n                ")+string("\u0022")+string("text")+string("\u0022")+string(": ")+string("\u0022")+string("") +
			string(global.presence_button2_text) + 
			string("")+string("\u0022")+string(",\n                ")+string("\u0022")+string("link")+string("\u0022")+string(": ")+string("\u0022")+string("") + 
			string(global.presence_button2_link) + 
			string("")+string("\u0022")+string("\n            }\n        }\n    }\n}");
			
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