//Draw self
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, global.UI_element_leftmenu_container, 1-global.fade_alpha);
//Draw container icon
draw_sprite_ext(s_LMC_i0, 0, x, y-((sprite_get_height(s_LMC0)/2))-30, 1, 1, 0, global.UI_element_leftmenu_section, 1-global.fade_alpha);
