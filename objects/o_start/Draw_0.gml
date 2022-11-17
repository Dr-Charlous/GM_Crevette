draw_self();
if(room != Room_Menu)
{
	if o_pause.pause {
		image_xscale = xscale/3;
		image_yscale = yscale/3;
	}
}

image_speed = 0;

if pressed = false {
	if place_meeting(x,y,o_mouse) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else 
	image_index = 2;