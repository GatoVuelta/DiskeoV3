/// @description check if we can use the avatar.
//if (!global.hassprite)
//{
if (async_load[? "status"] >= 0) 
{
	//Small
	if (async_load[? "id"] = spic_request)
	{
		asset_s_pic = async_load[? "id"];
		asset_s_pic_exists = true;
	} else 	if (async_load[? "id"] = lpic_request)
	//Big
	{
		asset_l_pic = async_load[? "id"];
		asset_l_pic_exists = true;
	}
}
//}