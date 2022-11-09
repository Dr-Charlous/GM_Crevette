if can_hurt
	with(other) {
		life -= 1;
		audio_play_sound(snd_hit,2,false);
	}
	alarm[0] = cooldown;
	can_hurt = false;