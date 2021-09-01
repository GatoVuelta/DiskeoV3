var _r = irandom_range(1, 10);
if (_r <= 7) {image_index = 0} else 
if (_r > 7) {image_index = 1}

image_speed = 0;

speed = random_range(2, 7);
direction = point_direction(x, y, x, y-200);
image_alpha = 1;
image_xscale = 0.2;
image_yscale = image_xscale;