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

//Click action
if ((element_enable) &&
(mouse_check_button_pressed(mb_left)) &&
(position_meeting(mouse_x, mouse_y, id)) &&
!(position_meeting(mouse_x, mouse_y, oDW_tab0)))
{
focus = true;
oDW_tab0.focus = false;

var objid = oDW_tab0;

var dw_layer = layer_get_id("LY_dw_tabs_down");
var up_layer = layer_get_id("LY_dw_tabs_up");

objid.layer = dw_layer;
id.layer = up_layer;
}