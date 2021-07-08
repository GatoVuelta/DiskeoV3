// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_write_js()
{

moderated_fline = string_replace_all(global.input_fline_text, "\"", "");
moderated_sline = string_replace_all(global.input_sline_text, "\"", "");
	
var _path = game_save_id + "/index.js";
var _txt = file_text_open_write(_path);

var textito = string( @"
const RPC = require('discord-rpc');
const client = new RPC.Client({
    transport: 'ipc'
});

client.on('ready', () => {
    client.request('SET_ACTIVITY', {
        pid: process.pid,
        activity: {
            details: ") + string("'") + string(moderated_fline) + string("'") + string(",\n")
			+ string("state: ") + string("'") + string(moderated_sline) + string("'") + string(",\n") + string( @"
            timestamps: {
                start: Date.now()
            },
            assets: {
                large_image: 'dsk_dsklogo',
                large_text: 'large',
				small_image: 'dsk_dsklogo',
				small_text: 'small',
            },
            buttons: [
                { label: 'Button 1', url: 'https://google.com/' },
                { label: 'Button 2', url: 'https://google.com' }
            ]
        }
    });
});

client.login({
    clientId: '847591694333247498',
    clientSecret: 'bvOd01pl6bmiKKg10sqnT1VsDUDCQKIe'
});
");

file_text_write_string(_txt, textito);
file_text_close(_txt);

var command = string("node ") + string(_path) + string(" --trace-warnings");

if (file_exists("C:/Program Files/nodejs/node.exe"))
{
	np_clearpresence();
	__np_shutdown();
	
	//get_open_filename("text file|*.txt", "");
	//DeletePreviousPresence
	//ExecuteJS
	//ExecuteShell(command, false);
	
	procid_actual = ProcessExecuteAsync(command);
	execute_shell("notepad.exe", _path)
	
	//KillOldProcess
	if (procid_old != -1)
	{
		ProcIdKill(procid_old);
	}
	
	show_debug_message(procid_actual);
	show_debug_message(CompletionStatusFromExecutedProcess(procid_actual));
	
	return(procid_actual);
} else {
	show_error("You can't test this feature as you don't have NodeJS installed on your system.", false);
}


}