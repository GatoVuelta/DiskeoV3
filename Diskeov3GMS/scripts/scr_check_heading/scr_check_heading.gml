// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_heading()
{
	if (instance_exists(global.heading_dw))
{
	switch (global.heading_dw.text)
	{
		case "Life": 
		{
			global.appIDto = "854011844557013022"
			global.clientsecret_to = "eEbD7kHQWVSU9qW296TJY3CVPsd7Pc6m";
		}; 
		break;
		case "Diskeo":
		{
			global.appIDto = "854857346882994207"
			global.clientsecret_to = "aMnZX8Ux6dRkppgsSLqKRs7SMVqYU-N3";
		}; 
		break;
		case "Nothing":
		{
			global.appIDto = "847591694333247498"
			global.clientsecret_to = "bvOd01pl6bmiKKg10sqnT1VsDUDCQKIe";
		}; 
		break;
		case "School":
		{
			global.appIDto = "854858274528559165"
			global.clientsecret_to = "F6LNwiln84g0YgeYnbBkJ1d1ZoYrybWE";
		}; 
		break;
		case "Check my status":
		{
			global.appIDto = "765725484779700224"
			global.clientsecret_to = "F6LNwiln84g0YgeYnbBkJ1d1ZoYrybWE";
		}; 
		break;
		default:
		//CustomHeading
		{
			global.appIDto = "765725484779700224";
			global.clientsecret_to = "vBCWL1WEP4f-x_nJhXn-Pr1bWaBD_xH4";
		}
	}
}

}