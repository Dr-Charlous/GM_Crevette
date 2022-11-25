if gamepad_is_connected(0)
	draw_sprite_ext(s_laser_cac,0,x,y,1,1,o_player.aim_dir,c_white, 0.3);
draw_sprite_ext(sprite_index, image_index, x+5, y+3, 1, o_player.facing, o_player.aim_dir, c_black, 0.3);
draw_self();
