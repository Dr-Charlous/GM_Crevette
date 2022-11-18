if keyboard_check_pressed(vk_escape) or (gamepad_is_connected(0) and gamepad_button_check_pressed(0, gp_start)) {
	pause = !pause;
	menu_pause();
}