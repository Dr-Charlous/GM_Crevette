
if sprite_get_name(sprite_index) == s_life_player {
	if keyboard_check_pressed(ord("R")) {
		sprite_index = s_HeartExplode;
	}
}
if sprite_get_name(sprite_index) == s_HeartExplode {
	if sprite_index == 6 {
		sprite_index = s_HeartExplode;
	}
}

for (var i = 0; i < o_player.life; i++) {
	with(o_player.list_life[i]) {
		var xcam = camera_get_view_x(view_current);
		var ycam = camera_get_view_y(view_current);
		x = xcam+150*i+15;
		y = ycam+100;
	}
}