/// @function scr_open_url(url, wait);
/// @param URL
/// @param wait
function scr_write_notepadtxt(){
	
var _path = game_save_id + "/whatsnew.txt";
var _txt = file_text_open_write(_path);
file_text_write_string(_txt, argument0);
file_text_close(_txt);

ExecuteShell(_path, true);

}