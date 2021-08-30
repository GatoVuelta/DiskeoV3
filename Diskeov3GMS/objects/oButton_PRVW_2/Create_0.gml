//Basic stuff
focus = false;
border_alpha = 0;
maxium_length = 200;
ever_clicked_clicking = false;
draw_load = false;
img_request = -1;

if (global.hassprite) && !(global.hassbanner)
{
	img_request = http_get(string("https://api.sightengine.com/1.0/check.json?url=")+string(global.user_avatar_url)+string("&models=properties&api_user=25594430&api_secret=DULGwRWykZQUPB2SRyWF"));
}

//ActionText
tab_text = "Button 1";

//Enable comander
element_default_enable = true;
element_enable = true;

//Beta
soon_availability = true;
soon_text = "Soon™";
//beta = true;

//Room
room_to_check = rm_main;
room_to = rm_txt_st; 

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
total_subimgs = sprite_get_number(spr_pfpcload_tr);
load_subimg = 0;

data_and_roots = false;
root_accent_value_exists = false;

procid_actual = -1;
procid_old = -1;