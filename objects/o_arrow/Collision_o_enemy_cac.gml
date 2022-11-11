//collision et perte de vie :I
if !place_meeting(x,y,owner_id){
		arrow_die();
		audio_play_sound(snd_hit,2,false);
		with(other) {
			life -= 2;
			hit = true;
			alarm[0] = 20;
			var _dir = other.direction;
			hmove = lengthdir_x(walk_spd, _dir);
			vmove = lengthdir_y(walk_spd, _dir);
			x += hmove*other.recul;
			y += vmove*other.recul;
		}
}