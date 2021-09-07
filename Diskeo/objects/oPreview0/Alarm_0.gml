/// @description Update Timer
timestamp_now = current_time;
timestamp = timestamp_now - timestamp_start;

//Seconds
if !(seconds > 58)
{
	seconds = round(timestamp/1000);
} else 
{
	timestamp_start = current_time;
	seconds = 0;
	minutes += 1;
}
//Minutes
//Hours
if (minutes > 59)
{
	minutes = 0;
	hours += 1;
}

//Excess
minutes_display = minutes; seconds_display = seconds; hours_display = hours;

if (seconds <= 9)
{
	seconds_display = string("0")+string(seconds_display);
}

if (minutes <= 9)
{
	minutes_display = string("0")+string(minutes_display);
}

if (hours <= 9)
{
	hours_display = string("0")+string(hours_display);
}

//Aply
if (hours > 0)
{
timestamp =
(
string(hours_display)+
string(":")+
string(minutes_display)+
string(":")+
string(seconds_display)
)
} else
{
timestamp =
(
string(minutes_display)+
string(":")+
string(seconds_display)
)
}


alarm[0] = room_speed*1;

