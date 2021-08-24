/// @description dropdown_create(x, y, [defaultText], [item1], [item2], [...])
/// @param x
/// @param  y
/// @param  [defaultText]
/// @param  [item1]
/// @param  [item2]
/// @param  [...]
function dropdown_create() {
	/*
	 * Creates a new dropdown at the specified coordinates
	 *
	 * x:                      The x position
	 * y:                      The y position
	 * defaultText (Optional): The text that should be displayed in the dropdown.
	 * itemX (Optional):       Adds items to the dropdown
	 *
	 * Returns: The dropdown that was created
	*/

	var ist = instance_create_layer(argument[0], argument[1], "LY_dropdowns", obj_dropdown);
	if(argument_count > 2)
	    ist.text = argument[2];
	for(var i = 3; i < argument_count; i ++)
	{
	    show_debug_message(argument[i]);
	    dropdown_add(ist, argument[i]);
	}
	return ist;



}
