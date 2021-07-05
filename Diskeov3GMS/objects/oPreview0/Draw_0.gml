image_speed = 1;
//Shade
draw_sprite_ext(s_prvw_shade, 0, x-x_threshold, y, 1, 1, 0, global.UI_PRVW_shade, 1-init_alpha);
//Background
draw_sprite_ext(sprite_index, 0, x-x_threshold, y, 1, 1, 0, global.UI_PRVW_bg, 1-init_alpha);
//ProfilePicture
if (global.hassprite)
{
	draw_sprite_stretched_ext(global.userid_spr,0,((x-x_threshold)-(sprite_width/2))+22,(y-(sprite_height/2))+22,86,86,c_white,1-init_alpha);
	//c_pfps_load.image_index = global.userid_spr;
} else
{
	draw_sprite_stretched_ext(spr_pfpcload,load_subimg,((x-x_threshold)-(sprite_width/2))+22,(y-(sprite_height/2))+22,86,86,global.UI_general_primary,1-init_alpha);
}
//ProfilePictureClip
draw_sprite_stretched_ext(spr_pfpclip, 0, (x-x_threshold)-(sprite_width/2), y-(sprite_height/2), 118, 118, global.UI_PRVW_bg, 1-init_alpha);
//Topsquare
draw_sprite_ext(s_prvw_topsq, 0, x-x_threshold, y-(sprite_height/2), 1, 1, 0, global.userid_banner_color, 1-init_alpha);

//UserText
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(global.UI_element_focused);
draw_set_font(f_UniSans_TabTtle);
draw_set_alpha(1-init_alpha);
draw_text(((x-x_threshold)-(sprite_width/2))+15, y-10, string(global.userid_nick)+string("#")+string(global.userid_disc));

//BigPic
if (!asset_l_pic_exists)
{
	draw_sprite_ext(s_prvw_bigp, 0, (x-x_threshold) - 110, y+98, 1, 1, 0, c_black, 1-init_alpha);
} else
{
	draw_sprite_stretched_ext(asset_l_pic, 0, (x-x_threshold) - 138, y+68, 61, 61, c_white, 1-init_alpha);
}
//Small
if (!asset_s_pic_exists)
{
	draw_sprite_ext(s_prvw_smap, 0, (x-x_threshold) - 84, y+123, 1, 1, 0, c_black, 1-init_alpha);
} else
{
	draw_sprite_ext(spr_lspics_clip_c, 0, (x-x_threshold) - 90, y+116, 1, 1, 0, global.UI_PRVW_bg, 1-init_alpha);
	draw_sprite_stretched_ext(asset_s_pic, 0, (x-x_threshold) - 90, y+116, 21, 21, c_white, 1-init_alpha);
}
//LSClip
if (asset_s_pic_exists or asset_l_pic_exists)
{
	draw_sprite_ext(spr_lspics_clip, 0, (x-x_threshold) - 138, y+68, 1, 1, 0, global.UI_PRVW_bg, 1-init_alpha);
}

//Separator
draw_sprite_ext(s_prvw_separator0, 0, (x-x_threshold), y+30, 1, 1, 0, global.UI_PRVW_separator, 1);
//PlayingText
draw_set_font(f_UniSans_PrevPlaying);
draw_set_color(global.UI_PRVW_playingtext);
draw_text((x-x_threshold) - 140, y+50, "PLAYING A GAME");

//AppTitle
draw_set_font(f_UniSans_PrevAppTitle);
//draw_set_color(global.UI_element_focused);
//Heading
draw_text((x-x_threshold) - 65, y+78, shrinked_heading);
//Line1
draw_set_font(f_Arial_PrevAppDetails);
draw_text((x-x_threshold) - 65, y+93, shrinked_fline);
//Line2
draw_text((x-x_threshold) - 65, y+108, shrinked_sline);
//Timer
draw_text((x-x_threshold) - 65, y+125, string(timestamp)+string(" elapsed"));


//Reset
draw_set_halign(-1);
draw_set_valign(-1);