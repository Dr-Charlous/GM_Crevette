if o_dev.UI {
	pos_life = 30; //position premier point de vie

	//boucle pour faire apparaitre les pts de vie
	for(i=0;i<life;i++) {
		if instance_exists(my_shield)
			draw_sprite(s_life_shield_player,0,15+pos_life,30);
		else
			draw_sprite(s_life_player,0,15+pos_life,30);
		pos_life += 60;
	}
	
	//aff score
	draw_set_font(f_score);
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_text(960,30,my_score);
	draw_set_font(f_dev);
	draw_set_halign(fa_left);
	
	draw_sprite(s_swap,0,30,60);
}