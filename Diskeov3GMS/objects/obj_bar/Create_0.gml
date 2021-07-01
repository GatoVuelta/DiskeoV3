global.scroll_surface_x = 160;
global.scroll_surface_y = 210;

//DEfineVars
topLimit = y - (sprite_height/2) + (image_xscale*46);
bottomLimit = y + (sprite_height/2) - (image_xscale*46);

//CreateObjects
a = instance_create_layer(x, y, "LY_ScrollArea", obj_slider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y = topLimit;
a.depth = depth - 1;

//DefineBlend
image_blend = global.UI_scrll_scrollbar_bg;

//SurfaceVars
area_width = 608;
area_height = 320;

//Surface
global.scroll_surface = surface_create(area_width, area_height);

#region DefaultProps

//Basic stuff
focus = false;
border_alpha = 0;

//Enable comander
element_default_enable = true;
element_enable = true;

//Beta
soon_availability = true;
soon_text = "Soon™";
//beta = true;

//tte_ext_input_set_on_changed(example_on_changed);

//Speed
fin_speed = 25;
fout_speed = 25;
//AnimationVariables
init_x_threshold = 300;
init_alpha = 0;
x_threshold = init_x_threshold;
//AnimationState
fade_in = true;
fade_out = false;

#endregion