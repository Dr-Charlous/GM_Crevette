pause = false;

function menu_pause() {
	if pause {
		audio_pause_all();
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Shot");
		instance_create_layer(mouse_x,mouse_y,"Obj_dev",o_mouse);
		instance_create_layer(270,180,"Obj_dev",o_resume);
		instance_create_layer(270,240,"Obj_dev",o_option);
		instance_create_layer(270,300,"Obj_dev",o_quit);
		instance_create_layer(0,0,"Obj_dev",o_pause_aff);
	} else {
		audio_resume_all();
		instance_activate_layer("Instances");
		instance_activate_layer("Shot");
		instance_destroy(o_resume);
		instance_destroy(o_option);
		instance_destroy(o_quit);
		instance_destroy(o_pause_aff);
	}
}