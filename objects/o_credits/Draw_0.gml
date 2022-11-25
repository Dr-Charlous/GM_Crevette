draw_self();
image_speed = 0;


if pressed = false {
	if place_meeting(x,y,o_mouse) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else 
	image_index = 2;