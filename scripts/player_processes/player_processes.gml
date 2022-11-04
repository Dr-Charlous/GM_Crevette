function reset_variables()
{
	left	= 0;
	right	= 0;
	up		= 0;
	down	= 0;
	hmove   = 0;
	vmove   = 0;
}

function get_input()
{
	if(keyboard_check(ord("Q"))) left	= 1;
	if(keyboard_check(ord("D"))) right	= 1;
	if(keyboard_check(ord("Z"))) up		= 1;
	if(keyboard_check(ord("S"))) down	= 1;
}

function calc_movement()
{
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	if(hmove != 0 or vmove != 0)
	{
		if candash
		{
		    if keyboard_check(vk_space)
		    {
		        candash = false;
		        alarm[1] = 5;
		        walk_spd = 8;
				var _dir = point_direction(0, 0, hmove, vmove);
				hmove = lengthdir_x(walk_spd, _dir);
				vmove = lengthdir_y(walk_spd, _dir);
		    }
		} else {
			//correction bug diagonales
			var _dir = point_direction(0, 0, hmove, vmove);
			hmove = lengthdir_x(walk_spd, _dir);
			vmove = lengthdir_y(walk_spd, _dir);
		}
		
		x += hmove;
		y += vmove;
	}
	
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	my_bow.image_angle = aim_dir;
}

function collision()
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

function anim()
{
	if(mouse_check_button_pressed(mb_right)) {
		if cplayer {
		sp_idle = s_player_idle1; 
		sp_walk = s_player_walk1; 
		sp_hit = s_player_hit1;
		instance_destroy(my_bow);
		my_bow = instance_create_layer(x, y, "Instances", o_bow1);
		aim_dir = 0;
		bow_dist = 2;
		fire_rate = 60;
		can_fire = true;
		arrow_speed = 1;
		cplayer = false;
		} else {
		sp_idle = s_player_idle;
		sp_walk = s_player_walk;
		sp_hit = s_player_hit;
		instance_destroy(my_bow);
		my_bow = instance_create_layer(x, y, "Instances", o_bow);
		aim_dir = 0;
		bow_dist = 8;
		fire_rate = 30;
		can_fire = true;
		arrow_speed = 8;
		cplayer = true;
		}
		sprite_index = sp_idle;
	}
	
	if(hmove != 0 or vmove != 0)
		sprite_index = sp_walk;
	else
		sprite_index = sp_idle;
}

function check_fire()
{
	if(mouse_check_button(mb_left))
	{
		if(can_fire)
		{
			can_fire = false;
			alarm[0] = fire_rate;
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			if cplayer {
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow);
			} else {
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow1);
			}
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