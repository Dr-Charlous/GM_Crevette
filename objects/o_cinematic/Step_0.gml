var results = video_draw();

if results[0] == 0 {
	draw_surface(results[1], 0, 0);
} else {
	instance_create_layer(0,0,"Fade",o_fade_out);
	finish = true;
	alarm[0] = 80;
}

if keyboard_check_pressed(vk_space) or (gamepad_is_connected(0) and gamepad_button_check_pressed(0, gp_face1)) {
	instance_create_layer(0,0,"Fade",o_fade_out);
	finish = true;
	alarm[0] = 80;
}