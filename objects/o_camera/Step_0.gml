//changement cam player
if keyboard_check_pressed(ord("C")) {
	view_visible[0] = true;
	view_visible[1] = false;
}
//changement cam map
if keyboard_check_pressed(ord("V")) {
	view_visible[0] = false;
	view_visible[1] = true;	
}

//screen shake et retour cam normal
if fire = true
	screen_shake();
else {
	cam_x = o_player.x;
	cam_y = o_player.y;
}

camera_set_view_pos(view_camera[0], cam_x-camera_get_view_border_x(view_camera[0])/2, cam_y-camera_get_view_border_y(view_camera[0])/2);