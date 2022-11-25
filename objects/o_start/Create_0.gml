pressed = false;

if(room != Room_Menu) {
	if o_pause.pause {
		image_xscale = image_xscale/3;
		image_yscale = image_yscale/3;
	}
}

audio_stop_sound(snd_menu)
snd = audio_play_sound(snd_menu,1,true);
audio_sound_gain (snd, 0 , 0 );
audio_sound_gain (snd, 1 , 3000 );