/// @description  tte_ext_set_selection_anchor( line, col )
/// @param  line
/// @param  col 
function tte_ext_set_selection_anchor() {
	var sl, sc;
	sl = argument[0];
	sc = argument[1];

	selAnchorLine = sl;
	selAnchorCol = sc;

	update = true;



}