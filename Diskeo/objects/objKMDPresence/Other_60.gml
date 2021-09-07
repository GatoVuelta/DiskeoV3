/// @description check if we can use the avatar.
if (!global.hassprite) && !(global.debugmode0)
{
	if (async_load[? "id"] = spr_id)
	{
		if (async_load[? "status"] >= 0) 
		{
			global.hassprite = true;
			global.userid_spr = async_load[? "id"];
		}
	}
}