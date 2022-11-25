instance_destroy(o_fade_in);
if instance_exists(o_fade_out) {
	instance_destroy(o_fade_out);
	room_goto(Room_Menu);
}