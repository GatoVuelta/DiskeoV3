x0 = global.scroll_pres_surface_x;
y0 = global.scroll_pres_surface_y;
x1 = x0 + o_scrollbar_pres.area_width;
y1 = y0 + o_scrollbar_pres.area_height;

if (point_in_rectangle(mouse_x, mouse_y, x0, y0, x1, y1))
{
	grab = true;
	wheelgrab = true;
	if(mouse_wheel_down())
	{
		y = y+10;
	} else if (mouse_wheel_up())
	{
		y = y-10;
	} else
	{
		grab = false;
	}
} else 
{
	grab = false;
}

if (!mouse_check_button(mb_left) && !mouse_wheel_down() && !mouse_wheel_up() && !grab)
{
	mousegrab = false;
	wheelgrab = false;
}

else if (wheelgrab)
{
	if ((y + yy < bottomLimit) && (y + yy > topLimit))
	{
		y = y + yy;	
	}
	else if (y + yy > bottomLimit)
	{
		y = bottomLimit;	
	}
	else if (y + yy < topLimit)
	{
		y = topLimit;	
	}
} else if (mousegrab)
{
	if ((mouse_y + yy < bottomLimit) && (mouse_y + yy > topLimit))
	{
		y = mouse_y + yy;	
	}
	else if (mouse_y + yy > bottomLimit)
	{
		y = bottomLimit;
		y = y;
	}
	else if (mouse_y + yy < topLimit)
	{
		y = topLimit;
		y = y;
	}
}

percentage = round(((y-bottomLimit)/(topLimit-bottomLimit))*100);

//Cursor ctrl
if (position_meeting(mouse_x-global.scroll_pres_surface_x, mouse_y-global.scroll_pres_surface_y, obj_card_presence))
{
	//window_set_cursor(cr_drag);
} else
{
	//window_set_cursor(cr_default);
}

