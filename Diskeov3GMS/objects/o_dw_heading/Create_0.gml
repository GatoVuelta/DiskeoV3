//alarm[0] = 100;
if (global.last_heading_tab == 0)
{
	global.heading_dw = dropdown_create(x, y, global.heading_dw_text, "School", "Check my status", "Life", "Diskeo", "Nothing");
} else {
	instance_destroy();
}