pause = false;

function menu_pause() {
	if pause {
		cursor_sprite = noone;
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Shot");
		instance_deactivate_all(o_wpn_cac);
		instance_deactivate_all(o_wpn_dis);
		instance_create_layer(camera_get_view_x(view_camera[0])+270,camera_get_view_y(view_camera[0])+100,"Obj_dev",o_mouse);
		instance_create_layer(camera_get_view_x(view_camera[0])+270,camera_get_view_y(view_camera[0])+180,"Obj_dev",o_resume);
		instance_create_layer(camera_get_view_x(view_camera[0])+270,camera_get_view_y(view_camera[0])+240,"Obj_dev",o_quit);
		instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),"Obj_dev",o_pause_aff);
		//audio_sound_gain (all, 0.2 , 2000 );
	} else {
		instance_activate_all();
		instance_destroy(o_mouse);
		instance_destroy(o_resume);
		instance_destroy(o_quit);
		instance_destroy(o_pause_aff);
		//audio_sound_gain (all, 1 , 2000 );
	}
}