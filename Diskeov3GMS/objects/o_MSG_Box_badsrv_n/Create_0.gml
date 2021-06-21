my_cross = instance_create(x+(sprite_width/2)-25, y-(sprite_height/2)+25, o_msgbx_cross);
my_cross.element_enable = false;
my_cross.caller = id;

//ActionButtons
my_btn0 = instance_create(x-95, y+65, o_msgbx_acbtn2);
my_btn0.element_enable = true;
my_btn0.caller = id;
my_btn1 = instance_create(x+95, y+65, o_msgbx_acbtn3);
my_btn1.element_enable = true;
my_btn1.caller = id;

init_alpha = o_overlayctrl_0.overlay_alpha;

msg_title = "Bruh moment";
msg_description = ("There is already a new version with important features\nand critical fixes. You need to download and install\nthe update to continue using Diskeo.");