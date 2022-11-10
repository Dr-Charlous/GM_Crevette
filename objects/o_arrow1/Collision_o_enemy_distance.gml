//collision et perte de vie :I
if !place_meeting(x,y,owner_id){
		arrow_die();
		other.life -= 2;
		audio_play_sound(snd_hit,2,false);
}