/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48E26D83
/// @DnDArgument : "code" "function TTE_EXT_INPUT_MANUAL() {$(13_10)	/*$(13_10)$(13_10)	    --------------------------------------------------------------------------------$(13_10)    $(13_10)	        Asset : TTE extension - Input$(13_10)	        Author: Cedrik Dubois ( CedSharp )$(13_10)        $(13_10)	    --------------------------------------------------------------------------------$(13_10)        $(13_10)	        You are free to do what you want with this asset under$(13_10)	        the following conditions:$(13_10)            $(13_10)	            1. You cannot sell this asset by itself, but you can sell$(13_10)	               a game that uses this asset.$(13_10)	               ( I tested and will test all input assets on marketplace$(13_10)	                 so if you try to sell it I'll sue you )$(13_10)               $(13_10)	            2. You cannot take any credit for this asset.$(13_10)	               Common, I spent many days on this asset, I think$(13_10)	               the minimum you can do is respect me with a small$(13_10)	               'Text inputs by cedsharp' somewhere c:$(13_10)               $(13_10)	            3. You cannot make me responsible for any usage you$(13_10)	               make of this asset. Once you downloaded it, I have$(13_10)	               no liability with it.$(13_10)               $(13_10)	    --------------------------------------------------------------------------------$(13_10)    $(13_10)	        ~ How to use ~$(13_10)        $(13_10)            $(13_10)	            All you have to do is to create an object and call the following$(13_10)	            scripts in their respective events:$(13_10)            $(13_10)	                - In 'Create Event', call this script:          tte_ext_input_create$(13_10)	                - In 'Step / Step Event', call this script:     tte_ext_input_step$(13_10)	                - In 'Draw / Draw Event', call this script:     tte_ext_input_draw$(13_10)                $(13_10)	            That's it!$(13_10)	            You can configure some basic options in the next section.$(13_10)            $(13_10)	            There is a variable called 'focus' in the input.$(13_10)	            If that variable is true, then the keyboard will be readed by the input.$(13_10)	            If that variable is false, then nothing will happen with the keyboard.$(13_10)	            This is useful if you want to do something else with the keyboard.$(13_10)	            Right now, click outside the textbox fill set focus to false, and clicking$(13_10)	            inside it will set focus back to true, but you can change that variable with code too!$(13_10)            $(13_10)	            To get or change the text of the input, simply call tte_ext_input_get_text$(13_10)	            or tte_ext_input_set_text from within the input object.$(13_10)$(13_10)	            ex:$(13_10)	            {$(13_10)	                var text;$(13_10)	                with( obj_input ) {$(13_10)	                    text = tte_ext_input_get_text();$(13_10)	                    tte_ext_input_set_text("");$(13_10)	                }$(13_10)	            }$(13_10)            $(13_10)	            The above piece of code creates a temporary variable, reads the text of an input into it,$(13_10)	            then clears the text of that input. The result is that the variable 'text' now contains the text$(13_10)	            of the input, and the input itself is now empty.$(13_10)            $(13_10)	            You can also wait for the text to change by calling 'tte_ext_input_set_on_changed'.$(13_10)	            The script you provide will be called each time the text of the input changed.$(13_10)	            To remove your script you can call 'tte_ext_input_clear_on_changed'.$(13_10)	            NOTE: If you set a script while there was already a script, the old script will not be called anymore.$(13_10)            $(13_10)            $(13_10)	        ~ Configuring the Input ~$(13_10)$(13_10)            $(13_10)	            Options can be set after calling 'tte_ext_input_create()'.$(13_10)	            NOTE: They MUST be executed from within the input object.$(13_10)            $(13_10)	            Here are the options you can change with this input object:$(13_10)            $(13_10)	                - tte_ext_input_set_multiline( multiline ):$(13_10)	                        Set to true to allow more than one line of text.$(13_10)	                        Set to false for the opposit.$(13_10)                    $(13_10)	                - tte_ext_input_set_size( width, height ):$(13_10)	                        Change the size of the input. If text is larger, then$(13_10)	                        the input will automatically scroll until the caret is visible.$(13_10)                    $(13_10)	                - tte_ext_input_set_padding( left, right, top, bottom ):$(13_10)	                        Change the padding of the editor.$(13_10)	                        This option changes the distance from the borders from which to start$(13_10)	                        scrolling from.$(13_10)                        $(13_10)	                - tte_ext_set_text_color( color, alpha ):$(13_10)	                        Change the color and the alpha of the text inside the input.$(13_10)                        $(13_10)	                - tte_ext_set_background_color( color, alpha ):$(13_10)	                        Change the background color of the input.$(13_10)                        $(13_10)	                - tte_ext_set_selection_color( color, alpha ):$(13_10)	                        Change the color of the selection's background ( not the text )$(13_10)                        $(13_10)	                - tte_ext_set_font( font ):$(13_10)	                        Change the font used for the text in the input.$(13_10)                        $(13_10)	                - tte_ext_input_set_on_changed( script ):$(13_10)	                        Set the script to bed called each time the input's text changes.$(13_10)                        $(13_10)	                - tte_ext_input_clear_on_changed():$(13_10)	                        Stop calling the script ( if there is one ) when the input's text changes.$(13_10)                        $(13_10)	*/$(13_10)$(13_10)$(13_10)$(13_10)}$(13_10)"
function TTE_EXT_INPUT_MANUAL() {
	/*

	    --------------------------------------------------------------------------------
    
	        Asset : TTE extension - Input
	        Author: Cedrik Dubois ( CedSharp )
        
	    --------------------------------------------------------------------------------
        
	        You are free to do what you want with this asset under
	        the following conditions:
            
	            1. You cannot sell this asset by itself, but you can sell
	               a game that uses this asset.
	               ( I tested and will test all input assets on marketplace
	                 so if you try to sell it I'll sue you )
               
	            2. You cannot take any credit for this asset.
	               Common, I spent many days on this asset, I think
	               the minimum you can do is respect me with a small
	               'Text inputs by cedsharp' somewhere c:
               
	            3. You cannot make me responsible for any usage you
	               make of this asset. Once you downloaded it, I have
	               no liability with it.
               
	    --------------------------------------------------------------------------------
    
	        ~ How to use ~
        
            
	            All you have to do is to create an object and call the following
	            scripts in their respective events:
            
	                - In 'Create Event', call this script:          tte_ext_input_create
	                - In 'Step / Step Event', call this script:     tte_ext_input_step
	                - In 'Draw / Draw Event', call this script:     tte_ext_input_draw
                
	            That's it!
	            You can configure some basic options in the next section.
            
	            There is a variable called 'focus' in the input.
	            If that variable is true, then the keyboard will be readed by the input.
	            If that variable is false, then nothing will happen with the keyboard.
	            This is useful if you want to do something else with the keyboard.
	            Right now, click outside the textbox fill set focus to false, and clicking
	            inside it will set focus back to true, but you can change that variable with code too!
            
	            To get or change the text of the input, simply call tte_ext_input_get_text
	            or tte_ext_input_set_text from within the input object.

	            ex:
	            {
	                var text;
	                with( obj_input ) {
	                    text = tte_ext_input_get_text();
	                    tte_ext_input_set_text("");
	                }
	            }
            
	            The above piece of code creates a temporary variable, reads the text of an input into it,
	            then clears the text of that input. The result is that the variable 'text' now contains the text
	            of the input, and the input itself is now empty.
            
	            You can also wait for the text to change by calling 'tte_ext_input_set_on_changed'.
	            The script you provide will be called each time the text of the input changed.
	            To remove your script you can call 'tte_ext_input_clear_on_changed'.
	            NOTE: If you set a script while there was already a script, the old script will not be called anymore.
            
            
	        ~ Configuring the Input ~

            
	            Options can be set after calling 'tte_ext_input_create()'.
	            NOTE: They MUST be executed from within the input object.
            
	            Here are the options you can change with this input object:
            
	                - tte_ext_input_set_multiline( multiline ):
	                        Set to true to allow more than one line of text.
	                        Set to false for the opposit.
                    
	                - tte_ext_input_set_size( width, height ):
	                        Change the size of the input. If text is larger, then
	                        the input will automatically scroll until the caret is visible.
                    
	                - tte_ext_input_set_padding( left, right, top, bottom ):
	                        Change the padding of the editor.
	                        This option changes the distance from the borders from which to start
	                        scrolling from.
                        
	                - tte_ext_set_text_color( color, alpha ):
	                        Change the color and the alpha of the text inside the input.
                        
	                - tte_ext_set_background_color( color, alpha ):
	                        Change the background color of the input.
                        
	                - tte_ext_set_selection_color( color, alpha ):
	                        Change the color of the selection's background ( not the text )
                        
	                - tte_ext_set_font( font ):
	                        Change the font used for the text in the input.
                        
	                - tte_ext_input_set_on_changed( script ):
	                        Set the script to bed called each time the input's text changes.
                        
	                - tte_ext_input_clear_on_changed():
	                        Stop calling the script ( if there is one ) when the input's text changes.
                        
	*/



}
/**/