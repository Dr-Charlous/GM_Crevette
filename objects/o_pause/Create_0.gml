pause = false;

function menu_pause() {
	if pause {
		audio_pause_all();
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Shot");
	} else {
		audio_resume_all();
		instance_activate_layer("Instances");
	}
}