/// @description dropdown_destroy(dropdown)
/// @param dropdown
function dropdown_destroy(argument0) {
	/*
	 * Deletes the specified dropdown
	 *
	 * dropdown: The dropdown object to delete
	 *
	 * Returns: None
	*/

	with(argument0)
	    instance_destroy();



}
