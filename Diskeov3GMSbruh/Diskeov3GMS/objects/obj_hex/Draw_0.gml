//DEMO: Create colors
col1 = make_color_hex("#000FFF");
col2 = make_color_hex("#C82BD6");
col3 = make_color_hex("ed4245");

//DEMO: Draw colored text
draw_text_colour(100, 35, string_hash_to_newline("make_color_hex(\"\\#000FFF\");"), col1, col1, col1, col1, 1);
draw_text_colour(100, 55, string_hash_to_newline("make_color_hex(\"\\#C82BD6\");"), col2, col2, col2, col2, 1);
draw_text_colour(100, 75, string_hash_to_newline("make_color_hex(\"\\#FF0\");"), col3, col3, col3, col3, 1);

//DEMO: Draw icon
draw_self();

