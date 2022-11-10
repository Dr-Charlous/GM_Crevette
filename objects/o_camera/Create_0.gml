//paramètre shake
shake_power = 5;
shake_value = 0;
fire = false;

//paramètre cam
view_visible[0] = true;
view_visible[1] = false;
cam_x = o_player.x;
cam_y = o_player.y;
camera_set_view_pos(view_camera[0], cam_x+camera_get_view_border_x(view_camera[0])/2, cam_y+camera_get_view_border_y(view_camera[0])/2);

function screen_shake() {
	var shake = power(shake_value, 2) * shake_power;
	cam_x += random_range(-shake, shake);
	cam_y += random_range(-shake, shake);

	camera_set_view_angle(view_camera[0], random_range(-shake, shake)*0.5);

	if (shake_value > 0) shake_value -= 0.1;
	
	if shake_value <= 0 {
		fire = false;
	}
}

//paramètre audio
audio_stop_sound(snd_ambiance);
audio_play_sound(snd_ambiance,1,true);