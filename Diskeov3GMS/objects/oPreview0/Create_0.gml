//Basic stuff
focus = false;
border_alpha = 0;
maxium_length = 200;
minium_lenght = 3;
total_subimgs = sprite_get_number(spr_pfpcload);
load_subimg = 0;
button_count = 0;
y_threshold = 0;

//Enable comander
element_default_enable = true;
element_enable = true;

//Beta
soon_availability = true;
soon_text = "Soon™";
//beta = true;

//tte_ext_input_set_on_changed(example_on_changed);

tab_text = "First Text Line";
shrinked_fline =  "";
shrinked_sline = "";
shrinked_heading = "";

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

//Pictures
asset_s_pic = spr_pfpcload;
asset_s_pic_exists = false;
asset_l_pic = spr_pfpcload;
asset_l_pic_exists = false;

iread = false;

hours = 0;
minutes = 0;
seconds = 0;
hours_display = "00";
minutes_display = "00";
hours_display = "00";

timestamp_start = current_time;
timestamp_now = current_time;
timestamp = "00:00";
alarm[0] = room_speed*1;

//TestAPI
var _request_map = ds_map_create();
ds_map_add(_request_map, "Authorization", "9RmyhXSKqtbMhi0pm2ko6YumbYBPiVZIL84DW37fIjDG1EFsMx70OSFUXIl4z0");
s_request = http_request("https://donatebot.io/api/v1/donations/770620179369426965/new?find=Completed", "GET", _request_map, noone);