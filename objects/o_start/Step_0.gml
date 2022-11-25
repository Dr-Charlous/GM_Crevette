if place_meeting(x,y,o_mouse) {
	if mouse_check_button_pressed(mb_left) or (gamepad_is_connected(0) and gamepad_button_check_pressed(0, gp_face1)) {
		alarm[0] = 80;
		pressed = true;
		instance_create_layer(0,0,"Fade",o_fade_out);
		audio_sound_gain(snd, 0 , 2000 );
		if audio_sound_get_gain(snd) <= 0
			audio_stop_sound(snd);
	}
}
