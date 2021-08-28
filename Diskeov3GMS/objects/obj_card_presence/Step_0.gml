y = ystart + ((global.areaHeight_pres/100 * obj_slider_pres.percentage) - global.areaHeight_pres - 38);
if !(global.fade_out)
{
	x = xstart-o_scrollbar_pres.x_threshold;
} else {
	x = xstart-(o_scrollbar_pres.x_threshold + 90);
}

if (obj_controller_pres.map_ready) && !(iread)
{
	if (global.asset_read_count_pres < ds_list_size(global.presences_files_list))
	{
		var file_to_open = ds_list_find_value(global.presences_files_list, global.asset_read_count_pres);
		opened_file = file_text_open_read(game_save_id + "/Presences/" + file_to_open);
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
		pres_info_name = ds_map_find_value(_info_map, "appName");
		pres_info_desc = ds_map_find_value(_info_map, "description");
		pres_content_line1 = ds_map_find_value(_text_map, "line1");
		} else
		{
			//---> NotValid -> Newer format
			valid_Asset = false;
			show_error("The file \""+file_to_open+"\" is from a newer format!\nPlease consider updating Diskeo to the latest version", false);
			txt = "Newer file format. Diskeo couldn't read this asset.";
		}
		} else 
		{
		//---> NotValid -> Unknown format
		valid_Asset = false;
		txt = string("Damaged file! (")+string(file_to_open)+string(")");
		show_error("\""+file_to_open+"\" is not a presence asset.\nIt wasn't saved and/or edited properly.",false);
		}
		
		global.asset_read_count_pres += 1;
		iread = true;
		spr_id = "CHANGE ME FOR ONLINE PICTURES NEXT TIME!";
		asset_sprite_exists = true;
		asset_sprite_this = s_cog_0;
	} else
	{
		empty_Asset = true;
		txt = "";
	}
}

//Hover & Click
if (position_meeting(mouse_x-global.scroll_pres_surface_x, mouse_y-global.scroll_pres_surface_y, id)) && (mouse_check_button_pressed(mb_left)) && !(empty_Asset)
{
}

//UpdateButtonsCoordinates
//with (mybtn_load)
//{
//	y = other.y;
//}

//SelectionCheck
//if (global.asset_select_l) && (global.lpic_key == txt)
//{	
//} else if (global.asset_select_s) && (global.spic_key == txt)
//{	
//} else {selected = false;
//}