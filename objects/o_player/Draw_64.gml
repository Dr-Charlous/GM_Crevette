if o_dev.UI {
	//aff coeurs
	for (var i = 0; i < life; i++) {
		if instance_exists(my_shield)
			draw_sprite(s_life_shield_player,0,96*i+80,131);
		else
			draw_sprite(s_life_player,0,96*i+80,131); //draw_sprite(s_life_player,0,sprite_width*i*6+80,sprite_height+50);
	}
	//aff score
	var yscore = 100;
	var xscore = 960;
	draw_sprite(s_cadreScore,0,xscore,yscore+20);
	draw_set_font(f_score);
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_text(xscore,yscore,my_score);
	draw_set_font(f_dev);
	draw_set_halign(fa_left);
	
	
	draw_sprite(s_swap_perso,0,30,200);
	if candash
		draw_sprite(s_dash,0,400,240);
	else
		draw_sprite(s_dashGris,0,400,240);
}