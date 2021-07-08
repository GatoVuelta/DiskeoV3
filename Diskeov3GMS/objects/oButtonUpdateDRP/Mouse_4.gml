oPreview0.timestamp_start = current_time;

if (global.experiment_nodejs)
{
	procid_old = procid_actual;
	scr_write_js();
	show_debug_message(string("old: ")+string(procid_old));
	show_debug_message(string("actual: ")+string(procid_actual));
}

