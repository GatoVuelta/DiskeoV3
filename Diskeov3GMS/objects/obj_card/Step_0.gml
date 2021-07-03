y = ystart + ((global.areaHeight/100 * obj_slider.percentage) - global.areaHeight - 38);
x = xstart-obj_bar.x_threshold;

if (o_dw_pics.map_ready) && !(iread)
{
	if (global.asset_read_count < ds_list_size(global.assets_list))
	{
		asset_map = ds_list_find_value(global.assets_list, global.asset_read_count);
		asset_id = ds_map_find_value(asset_map, "id");
		txt = ds_map_find_value(asset_map, "name");
		
		global.asset_read_count += 1;
		iread = true;
		
		url = (
		string("https://cdn.discordapp.com/app-assets/") +
		string(global.appIDto) +
		string("/") +
		string(asset_id) +
		string(".png")
		);
		spr_id = sprite_add(url, 1, false, false, 0, 0);
	} else
	{
		empty_Asset = true;
		txt = "";
	}
}

if (position_meeting(mouse_x-global.scroll_surface_x, mouse_y-global.scroll_surface_y, id)) && (mouse_check_button_pressed(mb_left)) && !(empty_Asset)
{
	//if (selected)
	//{
	//	selected = false;
	//	//txt = choose(":)", ":D", ":O", "CatFlip\n#5812");
	//} else
	//{
	//	selected = true;
	//}
	
	oPreview0.asset_l_pic = asset_sprite_this;
	oPreview0.asset_s_pic = asset_sprite_this;
	
	oPreview0.asset_l_pic_exists = true;
	oPreview0.asset_s_pic_exists = true;
	
	global.lpic_key = txt;
	global.spic_key = txt;
	
	global.lpic_id = asset_id;
	global.spic_id = asset_id;
	
}
