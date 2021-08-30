selected = false;
txt = choose("");
hover_load = false;
hover_share = false;
hover_delete = false;

//PresenceInfo
pres_info_name = "<Empty>";
pres_info_desc = "<Empty>";
pres_info_appID = 0;
pres_content_line1 = "<Empty>";
pres_content_line2 = "<Empty>";


empty_Asset = false;
valid_Asset = false;
iread = false;

asset_sprite_exists = false;
spr_id = -1;
hover = false;

global.card_pres_icount += 1;
c_count = global.card_pres_icount;

asset_sprite_this = sprite_index;

if (c_count > 3)
{
	instance_destroy();
} else {
	//CreateActionButtons
	//mybtn_load = instance_create_layer(x, y, "LY_ScrollArea_actions", oButton_pres_load);
}
