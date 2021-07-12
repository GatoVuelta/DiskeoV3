//Basic stuff
focus = false;
border_alpha = 0;
maxium_length = 50;
minium_lenght = 0;

//Enable comander
element_default_enable = true;
element_enable = true;

//Beta
soon_availability = true;
soon_text = "Soon™";
//beta = true;

//Create input
tte_ext_input_create(654, 54, false);

//tte_ext_input_set_on_changed(example_on_changed);

if (global.asset_select_l)
{
	var txt2 = "(Large)";
	tte_ext_input_set_text(global.l_tooltip);
} else {
	var txt2 = "(Small)";
	tte_ext_input_set_text(global.s_tooltip);
}

tab_text = string("Tooltip ")+string(txt2);

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

alarm[0] = 10;

