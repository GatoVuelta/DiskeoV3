//Basic stuff
focus = false;
border_alpha = 0;
maxium_length = 200;
minium_lenght = 3;

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

tab_text = "Second Text Line";

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

//SetText
if (global.input_sline_text != "")
{
	tte_ext_input_set_text(global.input_sline_text);
} else
{
	tte_ext_input_set_text("   ");
}

pressing_ctrl = false;
pressed_c = false;
pressed_v = false;

alarm[0] = 10;