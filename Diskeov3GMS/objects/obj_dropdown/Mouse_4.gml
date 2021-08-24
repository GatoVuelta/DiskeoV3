if !(global.overlay_init)
{
dropdown_close();
open = true;

global.overlay = true;

itema = instance_create_depth(x+(sprite_width-sprite_get_width(s_dw_large0_i)), y+sprite_height+5, -100, obj_dropdown_item);
itema.text = ds_list_find_value(items, 0);
itema.parent = id;

for(var i = 1; i < ds_list_size(items); i+=1)
{
    var item = instance_create_depth(x+(sprite_width-sprite_get_width(s_dw_large0_i)), y+33+29*(i+1), -100, obj_dropdown_item);
    item.text = ds_list_find_value(items, i);
    item.parent = id;
}
}