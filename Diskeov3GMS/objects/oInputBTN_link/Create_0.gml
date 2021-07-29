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

tab_text = "Button link";

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

pressing_ctrl = false;
pressed_c = false;
pressed_v = false;

if (global.presence_button_selected == 1)
{
	if !(string_length(global.presence_button1_link) < 1)
	{
		tte_ext_input_set_text(global.presence_button1_link)
	} else {
		tte_ext_input_set_text(" ");
	}
} else {
	if !(string_length(global.presence_button2_link) < 1)
	{
		tte_ext_input_set_text(global.presence_button2_link)
	} else {
		tte_ext_input_set_text(" ");
	}
}

alarm[0] = 10;

