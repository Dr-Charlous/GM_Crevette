if place_meeting(x,y,o_mouse) {
	if A {
		audio_play_sound(snd_select,2,false);
		A = false;
	}
	if mouse_check_button_pressed(mb_left) or (gamepad_is_connected(0) and gamepad_button_check_pressed(0, gp_face1)) {
		audio_play_sound(snd_confirm,2,false);
		alarm[0] = 10;
		pressed = true;
	}
} else A = true;