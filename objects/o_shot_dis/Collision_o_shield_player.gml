//collision :I
if !(owner_id = other.owner_id) {
	audio_play_sound(snd_hit_shield,2,false);
	arrow_die();
}