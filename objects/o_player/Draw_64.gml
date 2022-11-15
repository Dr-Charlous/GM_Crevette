if o_dev.UI {
	pos_life = 15; //position premier point de vie

	//boucle pour faire apparaitre les pts de vie
	for(i=0;i<life;i++) {
		if instance_exists(my_shield)
			draw_sprite(s_life_shield_player,0,15+pos_life,15);
		else
			draw_sprite(s_life_player,0,15+pos_life,15);
		pos_life += 150;
	}
	draw_text_ext(240,120,my_score,30,300);

	//afficher paramètres si manette connectée
	if (gamepad_is_connected(0)) {
		draw_text(8,2+40,"connected");
		draw_text(8,24+40,"stick gauche   = déplacement");
		draw_text(8,36+40,"stick droit    = viser");
		draw_text(8,48+40,"gachette droit = tirer");
		draw_text(8,60+40,"epaule droit   = changer");
		draw_text(8,72+40,"gachette gauche  = dash");
	} else {
		draw_text(8,2+40,"disconnected");
	}
}