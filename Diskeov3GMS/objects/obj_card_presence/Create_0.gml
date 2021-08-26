selected = false;
txt = choose("");

empty_Asset = false;
iread = false;

asset_sprite_exists = false;
spr_id = -1;
hover = false;

global.card_pres_icount += 1;
c_count = global.card_pres_icount;

asset_sprite_this = sprite_index;

if (c_count > 50)
{
	instance_destroy();
}