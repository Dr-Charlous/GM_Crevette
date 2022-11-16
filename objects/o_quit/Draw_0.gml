draw_self();
image_speed = 0;

if gamepad_is_connected(0) {
	if pressed = false {
		if place_meeting(x,y,o_mouse) {
			image_index = 1;
		} else {
			image_index = 0;
		}
	} else 
		image_index = 2;
} else {
	if pressed = false {
		if o_gamepad.gamepad_button == 3 {
			image_index = 1;
		} else {
			image_index = 0;
		}
	} else 
		image_index = 2;
}