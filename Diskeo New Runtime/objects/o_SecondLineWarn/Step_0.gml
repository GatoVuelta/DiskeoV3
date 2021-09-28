//BoxWarn
if (string_length(global.input_sline_text) < o_t_m.minium_lenght)
{
	//Activate
	show_warning = true;
	//Text
	tab_text = (string("You'll need to type at least ")
	+string(o_t_m.minium_lenght-string_length(global.input_sline_text))
	+string(" more character(s)\nto make this to be shown in your status."));
} else {show_warning = false}

//Position
x=(o_t_m.x-o_t_m.x_threshold)+625;
if (!(o_t_m.focus)){y=init_y}else{y=init_y+3};