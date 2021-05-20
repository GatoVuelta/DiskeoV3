//Window dragger color
if (window_has_focus())
{
image_blend = global.UI_windragger_focused;
} else image_blend = global.UI_windragger_unfocused;

draw_self();

//Debug text
draw_set_color(c_white);
draw_text(x, y+30, string("clicking = ") + string(ever_clicked_clicking));
draw_text(x, y+40, string("has_focus = ") + string(window_has_focus()));
draw_text(x, y+50, string("mouse_vector =  (") + string(display_mouse_get_x()) + string(";") + string(display_mouse_get_y()) + string(")"));