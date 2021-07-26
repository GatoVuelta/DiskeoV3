switch(click_sw)
{
	case 0: image_blend = off_color; global.presence_button1_enable = false; break;
	case 1: image_blend = dnd_color; global.presence_button2_enable = false; break;
	case 2: image_blend = idl_color; global.presence_button1_enable = true; break;
	case 3: image_blend = onl_color; global.presence_button2_enable = true; break;
}

image_alpha = 1-global.fade_alpha;
x = oPreview0.x-oPreview0.x_threshold-62;