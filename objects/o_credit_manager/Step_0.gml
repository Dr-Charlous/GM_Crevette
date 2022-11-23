if mouse_check_button_pressed(mb_left) or (gamepad_is_connected(0) and gamepad_button_check_pressed(0, gp_face1)) {
	alarm[0] = 80;
	instance_create_layer(0,0,"Fade",o_fade_out);
}