pause = false;

function menu_pause() {
	if pause {
		audio_pause_all();
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Shot");
		instance_create_depth(270,180,0,o_start);
		instance_create_depth(960,540,0,o_option);
		instance_create_depth(960,540,0,o_quit);
	} else {
		audio_resume_all();
		instance_activate_layer("Instances");
		instance_activate_layer("Shot");
	}
}