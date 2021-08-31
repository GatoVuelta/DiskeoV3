/// @function scr_open_url(url, wait);
/// @param URL
/// @param wait
function scr_open_url(){
	
var _url = argument0;
var _path = game_save_id + "/shortcut.url";
var _txt = file_text_open_write(_path);
file_text_write_string(_txt, @'[{000214A0-0000-0000-C000-000000000046}]
Prop3=19,11
[InternetShortcut]
IDList=
URL=' + _url);
file_text_close(_txt);

ExecuteShell(_path, argument1);

}