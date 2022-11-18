if !gamepad_is_connected(0) {
	x = mouse_x; 
	y = mouse_y;
} else {
	if room == Room_Menu {
		x += gamepad_axis_value(0, gp_axislh)*20;
		y += gamepad_axis_value(0, gp_axislv)*20;
	} else {
		x += gamepad_axis_value(0, gp_axislh)*10;
		y += gamepad_axis_value(0, gp_axislv)*10;
	}
}

var _tx = x;
var _ty = y;
	
x = xprevious;
y = yprevious;
	
//distance a bouger
var _disx = abs(_tx - x);
var _disy = abs(_ty - y);

if room == Room_Menu {
	repeat(_disx) {
		if(!place_meeting(x+sign(_tx-x), y, o_solid))
			x += sign(_tx-x);
	}
	
	repeat(_disy) {
		if(!place_meeting(x, y+sign(_ty-y), o_solid))
			y += sign(_ty-y);
	}
} else {
	repeat(_disx) {
		if(place_meeting(x+sign(_tx-x), y, o_pause_aff))
			x += sign(_tx-x);
	}
	
	repeat(_disy) {
		if(place_meeting(x, y+sign(_ty-y), o_pause_aff))
			y += sign(_ty-y);
	}
}