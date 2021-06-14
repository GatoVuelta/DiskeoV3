/// @description check if we can use the avatar.
if (!global.hassprite)
{
if (async_load[? "status"] >= 0) {
	global.hassprite = true;
	global.userid_spr = async_load[? "id"];
}
}