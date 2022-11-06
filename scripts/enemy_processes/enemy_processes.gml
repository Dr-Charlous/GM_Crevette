function reset_variables_enemy()
{
	left	= 0;
	right	= 0;
	up		= 0;
	down	= 0;
	hmove   = 0;
	vmove   = 0;
}

function get_input_enemy()
{
	var moov = irandom_range(0,5);
	if(moov == 1) left	= 1;
	if(moov == 2) right	= 1;
	if(moov == 3) up		= 1;
	if(moov == 4) down	= 1;
	hmove = right - left;
	vmove = down - up;
}

function calc_movement_enemy()
{
	//hmove = right - left;
	//vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	if(hmove != 0 or vmove != 0)
	{
		//correction bug diagonales
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove;
		y += vmove;
	}
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	my_bow.image_angle = aim_dir;
}

function collision_enemy()
{
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	//get distance we want to move
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx)
	{
		if(!place_meeting(x+sign(_tx-x), y, o_solid))
			x += sign(_tx-x);
	}
	
	repeat(_disy)
	{
		if(!place_meeting(x, y+sign(_ty-y), o_solid))
			y += sign(_ty-y);
	}
}

function anim_enemy()
{
		sp_idle = s_player_idle;
		sp_walk = s_player_walk;
		sp_hit = s_player_hit;
		aim_dir = 0;
		bow_dist = 8;
		fire_rate = 30;
		can_fire = true;
		arrow_speed = 8;
		cplayer = true;
	
	if(hmove != 0 or vmove != 0)
		sprite_index = sp_walk;
	else
		sprite_index = sp_idle;
}

function check_fire_enemy()
{
	button_shoot = mouse_check_button(mb_left)
	
	if(button_shoot)
	{
		if(can_fire)
		{
			can_fire = false;
			alarm[0] = fire_rate;
			if gamepad_is_connected(0) {
				var _dir = point_direction(x, y, x+gamepad_axis_value(0, gp_axisrh), y+gamepad_axis_value(0, gp_axisrv));
			} else {
				var _dir = point_direction(x, y, mouse_x, mouse_y);
			}
			var _inst = instance_create_layer(x, y, "Arrow", o_arrow);
			bow_dist = 2;
			with(_inst)
			{
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
	}
}