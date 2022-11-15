draw_self();
draw_text(x+7,y,"Play");
image_speed = 0;

if place_meeting(x,y,o_mouse) {
	image_index = 1;
} else {
	image_index = 0;
}