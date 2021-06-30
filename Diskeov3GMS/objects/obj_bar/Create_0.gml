global.scroll_surface_x = 160;
global.scroll_surface_y = 210;

//DEfineVars
topLimit = y - (sprite_height/2) + (image_xscale*102);
bottomLimit = y + (sprite_height/2) - (image_xscale*102);

//CreateObjects
a = instance_create_layer(x, y, "LY_ScrollArea", obj_slider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y = topLimit;
a.depth = depth - 1;

//SurfaceVars
area_width = 640
area_height = 320
area_y_threshold = -500;

//Surface
global.scroll_surface = surface_create(area_width, area_height);