if (global.fade_in)
{
	global.fade_alpha -= 0.05;
	if (global.fade_alpha == 0){global.fade_in = false}
}

if (global.fade_out)
{
	global.fade_alpha += 0.04;
	if (global.fade_alpha == 1){global.fade_out = false}
}