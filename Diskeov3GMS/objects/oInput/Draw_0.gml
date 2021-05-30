draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_purple, 0.4)

script_execute(tte_ext_input_draw,0,0,0,0,0);

if( focus ) {
    draw_set_color( c_white );
    draw_rectangle( x, y, x+width, y+height, true );
}
