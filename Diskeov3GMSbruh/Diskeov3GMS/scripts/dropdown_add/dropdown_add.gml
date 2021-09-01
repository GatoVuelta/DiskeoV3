/// @description dropdown_add(dropdown, text)
/// @param dropdown
/// @param  text
function dropdown_add(argument0, argument1) {
	/*
	 * Adds an item with the given text to the dropdown.
	 *
	 * dropdown: The dropdown object.
	 * text:     The text of the new dropdown item.
	 *
	 * Returns: None
	*/

	ds_list_add(argument0.items, argument1);



}
