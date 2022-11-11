//changement cam player
if keyboard_check_pressed(ord("C")) {
	view_visible[0] = true;
	view_visible[1] = false;
}
//changement cam map
if keyboard_check_pressed(ord("V")) {
	view_visible[0] = false;
	view_visible[1] = true;	
}

//redemare jeu
if keyboard_check_pressed(ord("R"))
	game_restart();
	
//UI
if keyboard_check_pressed(ord("I")) {
	UI = !UI;
}

//instances (ne pas faire spawn dans les murs svp)
if keyboard_check_pressed(ord("1")) {
	var enemy = instance_create_layer(mouse_x,mouse_y,"Instances",o_enemy_distance);
}
if keyboard_check_pressed(ord("2")) {
	var enemy = instance_create_layer(mouse_x,mouse_y,"Instances",o_enemy_cac);
}