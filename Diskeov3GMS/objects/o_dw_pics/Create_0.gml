//alarm[0] = 100;
global.picdw_Exists = false;
global.picdw = dropdown_create(x, y, "<None>");
global.picdw_Exists = true;

app_assets_request = http_get
(
	string("https://discord.com/api/oauth2/applications/")
	+string(global.appIDto)
	+string("/assets")
);

map_ready = false;

global.asset_read_count = 0;