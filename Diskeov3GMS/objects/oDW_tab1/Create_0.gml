//Basic stuff
focus = false;
border_alpha = 0;
maxium_length = 200;
minium_lenght = 3;

element_enable = true;

//Enable comander
if (global.last_heading_tab == 1)
{
	focus = true;
	forceclick = true;
} else {
	focus = false;
	forceclick = false;
}

//Beta
soon_availability = true;
soon_text = "Coming soon";
//beta = true;

//tte_ext_input_set_on_changed(example_on_changed);

tab_text = "Custom AppID";

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