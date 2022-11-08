if can_hurt
	with(other) {
		life -= 1;
	}
	alarm[0] = cooldown;
	can_hurt = false;