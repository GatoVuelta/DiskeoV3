///@function scr_pres_readfile(filename);
///@param filenam

function scr_pres_readfile(filename){
		
		//Porting variables
		file_to_open = filename;
		
		//Read file
		opened_file = file_text_open_read(game_save_id + "/presences/" + file_to_open);
		var __textString__ = "";
		while (file_text_eof(opened_file) == false)
		{
		__textString__+= file_text_readln(opened_file);
		}
		file_text_close(opened_file);
		var _decodedjson = json_decode(__textString__);
		var _content_map = ds_map_find_value(_decodedjson, "content");
		_asset_type = ds_map_find_value(_decodedjson, "asset_type");
		_ver = ds_map_find_value(_decodedjson, "ver");

		//Check asset type
		if (_asset_type == "Presence")
		{
		if (_ver <= 0.1)
		{
		//---> Valid
		valid_Asset = true;
		txt = file_to_open;
		var _info_map = ds_map_find_value(_content_map, "info");
		var _text_map = ds_map_find_value(_content_map, "text");
		var _pics_map = ds_map_find_value(_content_map, "pictures");	
		var _pics_map_large = ds_map_find_value(_pics_map, "large");
		var _pics_map_small = ds_map_find_value(_pics_map, "small");
		var _btns_map = ds_map_find_value(_content_map, "buttons");	
		var _btns_map_1 = ds_map_find_value(_btns_map, "1");
		var _btns_map_2 = ds_map_find_value(_btns_map, "2");
		
		//Info
		pres_info_name = ds_map_find_value(_info_map, "appName");
		pres_info_appID = ds_map_find_value(_info_map, "appID");
		pres_info_desc = ds_map_find_value(_info_map, "description");
		
		//Lines
		pres_content_line1 = ds_map_find_value(_text_map, "line1");
		if (is_undefined(pres_content_line1)){pres_content_line1 = " "};
		pres_content_line2 = ds_map_find_value(_text_map, "line2");
		if (is_undefined(pres_content_line2)){pres_content_line2 = " "};
		
		//Pictures
		pres_content_pic1_enable = ds_map_find_value(_pics_map_large, "enable");
		if (is_undefined(pres_content_pic1_enable)){pres_content_pic1_enable = true};
		pres_content_pic1_key = ds_map_find_value(_pics_map_large, "last_key");
		if (is_undefined(pres_content_pic1_key)){pres_content_pic1_key = "dsk_dsklogo"};
		pres_content_pic1_tooltip = ds_map_find_value(_pics_map_large, "tooltip");
		if (is_undefined(pres_content_pic1_tooltip)){pres_content_pic1_tooltip = "None <Leave blank to disallow>"};
		pres_content_pic2_enable = ds_map_find_value(_pics_map_small, "enable");
		if (is_undefined(pres_content_pic2_enable)){pres_content_pic2_enable = true};
		pres_content_pic2_key = ds_map_find_value(_pics_map_small, "last_key");
		if (is_undefined(pres_content_pic2_key)){pres_content_pic2_key = "dsk_dsklogo"};
		pres_content_pic2_tooltip = ds_map_find_value(_pics_map_small, "tooltip");
		if (is_undefined(pres_content_pic2_tooltip)){pres_content_pic2_tooltip = "None <Leave blank to disallow>"};
		
		//Buttons
		pres_content_btn1_enable = ds_map_find_value(_btns_map_1, "enable");
		if (is_undefined(pres_content_btn1_enable)){pres_content_btn1_enable = true};
		pres_content_btn1_text = ds_map_find_value(_btns_map_1, "text");
		if (is_undefined(pres_content_btn1_text)){pres_content_btn1_text = "Button 1"};
		pres_content_btn1_link = ds_map_find_value(_btns_map_1, "link");
		if (is_undefined(pres_content_btn1_link)){pres_content_btn1_link = "http://komodroid.com/"};
		pres_content_btn2_enable = ds_map_find_value(_btns_map_2, "enable");
		if (is_undefined(pres_content_btn2_enable)){pres_content_btn2_enable = true};
		pres_content_btn2_text = ds_map_find_value(_btns_map_2, "text");
		if (is_undefined(pres_content_btn2_text)){pres_content_btn2_text = "Button 2"};
		pres_content_btn2_link = ds_map_find_value(_btns_map_2, "link");
		if (is_undefined(pres_content_btn2_link)){pres_content_btn2_link = "http://komodroid.com/"};

		
		} else {
			//---> NotValid -> Newer format
			valid_Asset = false;
			pres_info_name = "Newer file format!";
			pres_info_desc = file_to_open;
			show_error("The file \""+file_to_open+"\" is from a newer format!\nPlease consider updating Diskeo to the latest version", false);
			txt = "Newer file format. Diskeo couldn't read this asset.";
		}
		} else 
		{
		//---> NotValid -> Unknown format
		pres_info_name = "Invalid file!";
		pres_info_desc = file_to_open;
		valid_Asset = false;
		txt = string("Damaged file! (")+string(file_to_open)+string(")");
		//show_error("\""+file_to_open+"\" is not a presence asset.\nIt wasn't saved and/or edited properly.",false);
		}
	
}