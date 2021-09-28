/// @description dropdown_close()
function dropdown_close() {
	/*
	 * Closes the currently open dropdown, if there is any.
	 *
	 * dropdown: The dropdown object to close
	 *
	 * Returns: None
	*/

	var open = noone;
	for(var i = 0; i < instance_number(obj_dropdown) && open == noone; i ++)
	{
	    var ist = instance_find(obj_dropdown, i);
	    if(ist.open)
	        open = ist;
	}
	if(open != noone)
	{
	    open.open = false;
	    for(var i = 0; i < instance_number(obj_dropdown_item); i ++)
	    {
	        with(instance_find(obj_dropdown_item, i))
	        {
	            if(parent == open)
	            {
	                instance_destroy();
	                i -= 1;
	            }
	        }
	    }
	}



}
