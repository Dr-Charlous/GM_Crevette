window_set_cursor(cr_none);

x = mouse_x;
y = mouse_y;

if(room != Room_Menu) {
	if o_pause.pause {
		image_xscale = image_xscale/3;
		image_yscale = image_yscale/3;
	}
}