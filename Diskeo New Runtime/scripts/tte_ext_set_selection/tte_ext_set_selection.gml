/// @description  tte_ext_set_selection( start_line, start_col, end_line, end_col )
/// @param  start_line
/// @param  start_col
/// @param  end_line
/// @param  end_col 
function tte_ext_set_selection() {
	var sl, sc, el, ec;
	sl = argument[0];
	sc = argument[1];
	el = argument[2];
	ec = argument[3];

	selStartLine = sl;
	selStartCol = sc;
	selEndLine = el;
	selEndCol = ec;

	selVisible = true;
	update = true;



}