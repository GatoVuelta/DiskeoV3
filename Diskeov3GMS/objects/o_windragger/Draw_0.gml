//Window dragger color
if (window_has_focus())
{
image_blend = global.UI_windragger_focused;
} else image_blend = global.UI_windragger_unfocused;

draw_self();

//Diskeo logo
draw_sprite(s_wdg_diskeologo, 0, 7, 7,);

//Debug text
