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

//screen shake et retour cam normal
if fire = true
	screen_shake();