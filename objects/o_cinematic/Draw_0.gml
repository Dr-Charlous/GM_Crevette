var results = video_draw();
var duration = video_get_position();
var duration_vid = video_get_duration();

if results[0] == 0 {
	draw_surface(results[1], 0, 0);
} else {
	room_goto(Room1);
	video_close();
}

if keyboard_check_pressed(vk_space) {
	room_goto(Room1);
	video_close();
}

draw_text(150,700,duration_vid);
draw_text(50,700,duration);