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
			if !collision_circle(x,y,10,o_solid,false,false) {
				x += hmove*other.recul;
				y += vmove*other.recul;
			}
		}
}