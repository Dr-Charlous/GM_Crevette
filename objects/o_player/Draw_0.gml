//affachage du joueur avec effet mirroir
draw_sprite_ext(sprite_index, image_index, x+5, y+3, facing, 1, 0, c_black, 0.3);
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
if(hmove != 0 or vmove != 0)
	draw_sprite_ext(s_fx_walk, image_index, x, y, hmove/3, 1, 0, c_white, 1);