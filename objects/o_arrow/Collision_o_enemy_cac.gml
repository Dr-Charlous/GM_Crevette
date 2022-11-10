//collision et perte de vie :I
if !place_meeting(x,y,owner_id){
		arrow_die();
		audio_play_sound(snd_hit,2,false);
		with(other) {
			life -= 2;
			sprite_index = sp_hit;
		}
}