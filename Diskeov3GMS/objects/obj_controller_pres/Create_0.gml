var areaHeight = 0;

var maxWidth = 1;
var maxHeight = 9;
var xx = 110;
var yy = 100;

for (var j = 0; j < maxHeight; j++)
{
	for (var i = 0; i < maxWidth; i++)
	{
		instance_create_layer(xx - 50, yy, "LY_ScrollArea", obj_card_presence);
		
		if (i == maxWidth - 1)
		{
			xx += 100;
		}
		else {
			xx += 100;
		}
	}
	
	areaHeight = yy;
	
	xx = 110;
	yy += 100;
}

global.areaHeight_pres = areaHeight - 290;
map_ready = true;