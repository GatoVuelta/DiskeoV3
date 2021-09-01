/// @function scr_open_url(url, wait);
/// @param URL
/// @param wait
function scr_open_url(){

if (os_type == os_windows)
{
var _url = argument0;
var _path = game_save_id + "shortcut.url";
var _txt = file_text_open_write(_path);
file_text_write_string(_txt, @'[{000214A0-0000-0000-C000-000000000046}]
Prop3=19,11
[InternetShortcut]
IDList=
URL=' + _url);
file_text_close(_txt);

ExecuteShellOK(_path, false);
show_debug_message(_path);
} else {
	url_open(argument0);
}
}