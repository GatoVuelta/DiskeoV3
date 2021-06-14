dropdown_close();
open = true;

global.overlay = true;

itema = instance_create_depth(x+(sprite_width-sprite_get_width(spr_dropdown_item)), y+sprite_height, -100, obj_dropdown_item);
itema.text = ds_list_find_value(items, 0);
itema.parent = id;

for(var i = 1; i < ds_list_size(items); i+=1)
{
    var item = instance_create_depth(x+(sprite_width-sprite_get_width(spr_dropdown_item)), y+28+30*(i+1), -100, obj_dropdown_item);
    item.text = ds_list_find_value(items, i);
    item.parent = id;
}