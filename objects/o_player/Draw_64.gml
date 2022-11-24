if o_dev.UI {
	//aff coeurs
	for (var i = 0; i < life; i++) {
		if instance_exists(my_shield)
			draw_sprite(s_life_shield_player,0,sprite_width*i*6+80,sprite_height+50);
		else
			draw_sprite(s_life_player,0,sprite_width*i*6+80,sprite_height+50);
	}
	//aff score
	draw_set_font(f_score);
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_text(960,30,my_score);
	draw_set_font(f_dev);
	draw_set_halign(fa_left);
	
	draw_sprite(s_swap_perso,0,30,120);
}