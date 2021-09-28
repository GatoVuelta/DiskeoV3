/// @description  Handle Caret
function __tte_ext_input_handle_caret() {
	if( focus ) {
	    if( forceCaret ) {
	        forceCaret = false;
	        caretTimer = current_time;
	        caretVisible = true;
	        update = true;
	    }
	    else if( current_time >= caretTimer+caretDelay ) {
	        caretVisible = !caretVisible;
	        caretTimer += caretDelay;
	        update = true;
	    }
	}



}