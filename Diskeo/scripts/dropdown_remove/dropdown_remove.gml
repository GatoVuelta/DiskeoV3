/// @description dropdown_remove(dropdown, text)
/// @param dropdown
/// @param  text
function dropdown_remove(argument0, argument1) {
	/*
	 * Removes the first item with the given text. If no item with the text exists, nothing
	 * happens.
	 *
	 * dropdown: The dropdown object to remove the item from.
	 * text:     The text in the item that should be removed.
	 *
	 * Returns: None
	*/

	var index = ds_list_find_index(argument0.items, argument1);
	if(index != -1)
	{
	    ds_list_delete(argument0.items, index);
	}



}
