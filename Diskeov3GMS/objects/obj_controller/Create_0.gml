var areaHeight = 0;

var maxWidth = 6;
var maxHeight = 9;
var xx = 110;
var yy = 104;

for (var i = 0; i < maxWidth; i++)
{
	for (var j = 0; j < maxHeight; j++)
	{
		instance_create_layer(xx - 50, yy, "LY_ScrollArea", obj_card);
		
		if (j == maxHeight - 1)
		{
			yy += 100;
		}
		else {
			yy += 100;
		}
	}
	
	areaHeight = yy;
	
	yy = 105;
	xx += 100;
}

global.areaHeight = areaHeight - 395;