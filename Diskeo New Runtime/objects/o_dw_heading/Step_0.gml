global.heading_dw_text = global.heading_dw.text;

//switch (global.heading_dw.text)
//{
//	case "Life": global.appIDto = "854011844557013022"; break;
//	case "Diskeo": global.appIDto = "854857346882994207"; break;
//	case "Nothing": global.appIDto = "847591694333247498"; break;
//	case "School": global.appIDto = "854858274528559165"; break;
	
//	default: global.appIDto = "765725484779700224";
//}

with(global.heading_dw)
{
	image_alpha = 1-oInputFirstLine.init_alpha;
	x = oPreview0.x-oPreview0.x_threshold - 845;
}