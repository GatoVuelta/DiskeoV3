my_cross = instance_create(x+(sprite_width/2)-25, y-(sprite_height/2)+25, o_msgbx_cross_badsv);
my_cross.element_enable = true;
my_cross.caller = id;

//ActionButtons
my_btn2 = instance_create(x-95, y+65, o_msgbx_acbtn2);
my_btn2.element_enable = true;
my_btn2.caller = id;
my_btn3 = instance_create(x+95, y+65, o_msgbx_acbtn3);
my_btn3.element_enable = true;
my_btn3.caller = id;

init_alpha = o_overlayctrl_0.overlay_alpha;

msg_title = "Unable to check for updates";
msg_description = ("Diskeo was unable to connect to fecth data from\nthe server. Check your firewall settings and internet connection\nthen try again.");