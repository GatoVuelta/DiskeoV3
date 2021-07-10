draw_set_alpha(1);
draw_set_color(c_white);

draw_text(x, y, string("isWindows = ")+string(is_win));
draw_text(x, y+30, string("isLinux = ")+string(is_lnx));

draw_text(x, y+60, string("osVer = ")+string(os_ver));
draw_text(x, y+90, string("osVerName = ")+string(os_ver_name));