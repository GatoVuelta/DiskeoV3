/// @description  tte_ext_input_insert( text )
/// @param  text 
function tte_ext_input_insert() {
	var t = argument[0];
	lines[| line] = string_insert( t, lines[| line], column );
	tte_ext_move_cursor( 0, string_length( t ), true );
	update = true;



}
