my_cross = instance_create(x+(sprite_width/2)-25, y-(sprite_height/2)+25, o_msgbx_cross);
my_cross.element_enable = true;
my_cross.caller = id;

//ActionButtons
my_btn0 = instance_create(x-95, y+65, o_msgbx_acbtn0);
my_btn0.element_enable = true;
my_btn0.caller = id;
my_btn1 = instance_create(x+95, y+65, o_msgbx_acbtn1);
my_btn1.element_enable = true;
my_btn1.caller = id;

init_alpha = o_overlayctrl_0.overlay_alpha;

msg_title = "Update available";
msg_description = ("There is already a new version of Diskeo with more\nfeatures and fixes. You can update it right now but it's\nnot mandatory that you do so");