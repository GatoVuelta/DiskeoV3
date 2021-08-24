if (element_enable) && (!global.overlay)
{
	script_execute(tte_ext_input_step,0,0,0,0,0);
}

//Slow border fading
if (focus)
{
	if (border_alpha <= 0.9)
	{
		border_alpha += 0.1;	
	}
} else if (border_alpha >= 0.1)
	{
		border_alpha -= 0.1;
	}

//Fade in effect
if (fade_in)
{
	if (x_threshold >= fin_speed)
	{
	x_threshold -= fin_speed;
	init_alpha = ((x_threshold/init_x_threshold));
	} else fade_in = fin_speed;
}
//Fade out effect
if (fade_out)
{
	if (init_x_threshold <= -fout_speed)
	{
	init_x_threshold += fout_speed;
	x_threshold -= fout_speed;
	init_alpha = 1-(init_x_threshold/(x_threshold+init_x_threshold));
	} else fade_out = false;
}

//Clipboard

//Ctrl
if (keyboard_check(vk_control)){pressing_ctrl = true} else {pressing_ctrl = false}
//C
if (keyboard_check_pressed(ord("C"))){pressed_c = true} else {pressed_c = false}
//V
if (keyboard_check_pressed(ord("V"))){pressed_v = true} else {pressed_v = false}
//A
if (keyboard_check_pressed(ord("A"))){pressed_a = true} else {pressed_a = false}

if (pressing_ctrl) && (focus)
{
if(pressed_v)
{
	if (clipboard_has_text())
	{
		tte_ext_input_insert(clipboard_get_text());
	}
} else if(pressed_c)
{
	tte_ext_set_selection(0, 0, 0, string_length(tte_ext_input_get_text())+1);
	clipboard_set_text(tte_ext_input_get_text());
} else if(pressed_a)
{
	tte_ext_set_selection(0, 0, 0, string_length(tte_ext_input_get_text())+1);
}
}

//Output text
global.input_fline_text = tte_ext_input_get_text();

//If overlay
if ((global.overlay) && (element_enable))
{
	element_enable = false;
} else if (!global.overlay) && (element_default_enable)
{
	element_enable = true;
}

//Maxium and minium handler
if (focus) && (string_length(global.input_fline_text) > maxium_length)
{
	tte_ext_input_set_text(string_copy(global.input_fline_text, 1, maxium_length));
}