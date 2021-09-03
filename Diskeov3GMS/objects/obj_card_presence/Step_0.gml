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
		//Fetch and Read file
		var file_to_open = ds_list_find_value(global.presences_files_list, global.asset_read_count_pres);
		scr_pres_readfile(file_to_open);
		//Count
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

//with (mybtn_openf)
//{
//	y = (other.y) + 50;
//}

//SelectionCheck
//if (global.asset_select_l) && (global.lpic_key == txt)
//{	
//} else if (global.asset_select_s) && (global.spic_key == txt)
//{	
//} else {selected = false;
//}