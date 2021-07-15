#region DETECT

is_win = false;
is_lnx = false;

os_ver = -1;
os_ver_name = -1;

if (os_type == os_windows)
{
	is_win = true;
	os_ver = os_version;

switch(os_ver)
{
	case 393217: os_ver_name = "Windows 7"; break;
	case 393218: os_ver_name = "Windows 8"; break;
	case 393219: os_ver_name = "Windows 8.1"; break;
	case 655360: os_ver_name = "Windows 10"; break;
	default: os_ver_name = "Unkown Windows" ;
}
} else if (os_type == os_linux)
{
	is_lnx = true;
	os_ver = os_version;
	os_ver_name = "Some Ubuntu OS" ;
}

#endregion

#region WEBHOOK

webhook1 = discord_webhook("863476489315287051", "PC60JOFzNf5KWxD3he1xSY1epjmdZZrP6Z0hhOvlxLtdKTdkb8R_KIbxPMrM4h4DKpKM")

discord_webhook_edit(webhook1, edit_content, "New session started! :eyes:")
discord_webhook_edit(webhook1, edit_username, "Diskeo -> MainRoom")
discord_webhook_edit(webhook1, edit_embed_use, true)
discord_webhook_edit(webhook1, edit_embed_title, " ");
discord_webhook_edit(webhook1, edit_embed_description,
string("**AppVer:** `") + string(global.app_ver) + string("`\n") +
string("**OSName:** `") + string(os_ver_name) + string("`\n") +
string("**OSVer:** `") + string(os_ver) + string("`\n") +
string("**Fingerprint:** `") + string(global.unique_md5_id) + string("`\n")
)
discord_webhook_edit(webhook1, edit_embed_color, "7590012")
discord_webhook_edit(webhook1, edit_embed_thumbnail_url, "https://i.ibb.co/Vxk2B8V/up.png")

discord_webhook_execute(webhook1)

#endregion
