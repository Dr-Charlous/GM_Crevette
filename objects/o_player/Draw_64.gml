if (gamepad_is_connected(0)) {
	draw_text(8,2,"connected");
	draw_text(8,24,"stick gauche   = déplacement");
	draw_text(8,36,"stick droit    = viser");
	draw_text(8,48,"gachette droit = tirer");
	draw_text(8,60,"epaule droit   = changer");
	draw_text(8,72,"epaule gauche  = dash");
} else {
	draw_text(8,2,"disconnected");
}