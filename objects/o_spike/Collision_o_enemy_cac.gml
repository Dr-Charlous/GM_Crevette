if can_hurt {
	with(other) {
		audio_play_sound(snd_hit,2,false);
		life -= 1;
		hit = true;
		alarm[0] = 30;
		var _dir = point_direction(x,y,other.x,o_player.y);
		hmove = lengthdir_x(walk_spd, -_dir);
		vmove = lengthdir_y(walk_spd, -_dir);
		if !collision_circle(x,y,10,o_solid,false,false) {
			x += hmove*other.recul;
			y += vmove*other.recul;
		}
	}
	alarm[0] = cooldown;
	can_hurt = false;
}