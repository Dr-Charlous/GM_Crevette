if can_hurt
	sprite_index = Spr_idle_oursin_grand;
else
	sprite_index = Spr_oursin_grand;

draw_sprite_ext(sprite_index, image_index, x+5, y+5, 1, 0.8, 0, c_black, 0.2);
draw_self();