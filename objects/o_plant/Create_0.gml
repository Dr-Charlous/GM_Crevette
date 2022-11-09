depth_max = o_player.depth+1;
depth_min = o_player.depth-1;

draw_set_lighting(true);
draw_light_define_point(1, 200, 123, 50, 2000, c_white);
draw_light_enable(1, true);

function plant() {
	if place_meeting(x,y,o_player) {
		depth = depth_max;
	} else {
		depth = depth_min;
	}
}