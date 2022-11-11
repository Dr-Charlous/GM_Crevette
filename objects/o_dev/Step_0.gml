//changement cam player
if keyboard_check_pressed(ord("1")) {
	view_visible[0] = true;
	view_visible[1] = false;
}
//changement cam map
if keyboard_check_pressed(ord("2")) {
	view_visible[0] = false;
	view_visible[1] = true;	
}

//redemare jeu
if keyboard_check_pressed(ord("3"))
	game_restart();
	
//UI
if keyboard_check_pressed(ord("4")) {
	UI = !UI;
}

//instances (ne pas faire spawn dans les murs svp)
if keyboard_check_pressed(ord("5")) {
	var enemy = instance_create_layer(mouse_x,mouse_y,"Instances",o_enemy_distance);
}
if keyboard_check_pressed(ord("6")) {
	var enemy = instance_create_layer(mouse_x,mouse_y,"Instances",o_enemy_cac);
}

//vie infinie
if keyboard_check_pressed(ord("7")) {
	if o_player.life <= 3
		o_player.life = 1000;
	else
		o_player.life = 3;
}