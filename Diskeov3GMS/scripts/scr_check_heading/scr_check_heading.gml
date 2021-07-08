// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_heading()
{
	if (instance_exists(global.heading_dw))
{
	switch (global.heading_dw.text)
	{
		case "Life": global.appIDto = "854011844557013022"; break;
		case "Diskeo": global.appIDto = "854857346882994207"; break;
		case "Nothing": global.appIDto = "847591694333247498"; break;
		case "School": global.appIDto = "854858274528559165"; break;
		default: global.appIDto = "765725484779700224";
	}
}

}