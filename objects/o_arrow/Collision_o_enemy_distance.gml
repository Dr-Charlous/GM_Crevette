if !place_meeting(x,y,owner_id){
		arrow_die();
		other.life -= 1;
		audio_play_sound(snd_hit,2,false);
}