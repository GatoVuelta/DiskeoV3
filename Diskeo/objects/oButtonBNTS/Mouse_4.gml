if (room_to_check != room) && (!ever_clicked_clicking) && (element_enable)
{
ever_clicked_clicking = true;
//Define next
global.room_from = room;
//Run
scr_fadeout_commander();
alarm[0] = room_speed*0.5;
}