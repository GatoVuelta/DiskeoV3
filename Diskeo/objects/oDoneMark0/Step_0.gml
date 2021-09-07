image_alpha -= 0.02;
image_xscale += 0.02;
image_yscale = image_xscale;

if (image_alpha == 0)
{
	instance_destroy();
}