//paramètre shake
shake_power = 10;
shake_value = 0;
fire = false;

//paramètre cam
view_visible[0] = true;
view_visible[1] = false;

function screen_shake() {
	var shake = power(shake_value, 2) * shake_power;

	camera_set_view_angle(view_camera[0], random_range(-shake, shake)*0.5);

	if (shake_value > 0) shake_value -= 0.1;
	
	if shake_value <= 0 {
		fire = false;
	}
}

//paramètre audio
audio_stop_sound(snd_ambiance);
audio_play_sound(snd_ambiance,1,true);