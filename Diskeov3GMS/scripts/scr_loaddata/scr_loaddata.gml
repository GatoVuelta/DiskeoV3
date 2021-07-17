function scr_loaddata(){
	//Try to load at first
	fetched_map = ds_map_secure_load("data.komodroid");
	
	//Check if exists
	if (ds_exists(fetched_map, ds_type_map))
	{
		//Success
		show_debug_message("file exists");
	} else 
	{
		//Defaults
		show_debug_message("file doesn't exist");
		fetched_map = ds_map_create();
		ds_map_add(fetched_map, "saludo", "predeterminado, creado ahora");
		ds_map_secure_save(fetched_map, "data.komodroid");
		fetched_map = ds_map_secure_load("data.komodroid");
	}

show_debug_message(ds_map_find_value(fetched_map, "saludo"));
ds_map_destroy(fetched_map);

}