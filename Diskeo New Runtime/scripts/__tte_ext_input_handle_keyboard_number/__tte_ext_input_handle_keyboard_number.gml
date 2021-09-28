/// @description  Handle Keyboard
function __tte_ext_input_handle_keyboard_number() {
	if( focus ) {

	    var ctrl = keyboard_check( vk_control );
	    var alt = keyboard_check( vk_alt );
	    var shift = keyboard_check( vk_shift );
	    var changed = false;
		var number_ = false;
		
		switch (keyboard_key)
		{
			case vk_numpad0:
			case vk_numpad1:
			case vk_numpad2:
			case vk_numpad3:
			case vk_numpad4:
			case vk_numpad5:
			case vk_numpad6:
			case vk_numpad7:
			case vk_numpad8:
			case vk_numpad9:
			case ord("0"):
			case ord("1"):
			case ord("2"):
			case ord("3"):
			case ord("4"):
			case ord("5"):
			case ord("6"):
			case ord("7"):
			case ord("8"):
			case ord("9"):
			
			number_ = true;
			break;
			
			default: number_ = false
		}
		
    
	    if( keyboard_string != "" && !ctrl && !alt ) && (number_) {
	        if( tte_ext_has_selection() ) tte_ext_selection_delete();
	        if( keyboard_string == "#" ) keyboard_string = "\\#";
	        tte_ext_input_insert( keyboard_string );
	        keyboard_string = "";
	        forceCaret = true;
	        changed = true;
	    }
	    else if( keyboard_check_pressed( vk_anykey ) ) {
	        tte_ext_input_handle_key( keyboard_key, ctrl, alt, shift );
	        repeatKey = keyboard_key;
	        repeatTimer = current_time+repeatFirstDelay-repeatDelay;
        
	        switch( repeatKey ) {
	            case vk_backspace:
	            case vk_delete:
	            case vk_space:
	            case vk_enter:
	                changed = true;
	            break;
	        }
	    }
	    if( repeatKey != vk_nokey ) {
	        if( keyboard_check_released( repeatKey ) ) repeatKey = vk_nokey;
	        else if( keyboard_check( vk_anykey ) && repeatKey != vk_nokey ) {
	            if( current_time >= repeatTimer+repeatDelay ) {
	                tte_ext_input_handle_key( repeatKey, ctrl, alt, shift );
	                repeatTimer += repeatDelay;
	                switch( repeatKey ) {
	                    case vk_backspace:
	                    case vk_delete:
	                    case vk_space:
	                    case vk_enter:
	                        changed = true;
	                    break;
	                }
	            }
	        }
	    }
    
	    if( changed ) if( script_exists( on_changed ) ) script_execute( on_changed, tte_ext_input_get_text() );
	}



}