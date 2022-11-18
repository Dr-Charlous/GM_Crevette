if finish == false {
	video_resume();
	instance_destroy(o_fade_in);
}

if finish {
	video_close();
	room_goto(Room1);
	instance_destroy(o_fade_out);
}