if dead
	draw_sprite_ext(sp_dead, 0, x, y, 1, -1, 0, c_white, 1);
else {
	sprite_index = s_bubble_particle;
	draw_self();
}