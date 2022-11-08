function calc_movement_enemy()
{
	if(!collision_circle(x,y,range_view,o_player,false,false)) {
		counter += 1;
		if(counter >= action) {
			var moov = irandom_range(0,5);
			if(moov = 1) {
				hmove = -1;
			} else if(moov = 2) {
				hmove = 1;
			} else if(moov = 3) {
				vmove = -1;
			} else if(moov = 4) {
				vmove = 1;
			} else {
				hmove   = 0;
				vmove   = 0;
			}
			counter = 0;
			action = irandom_range(10, 40);
		}
		//correction bug diagonales
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
	} else if (collision_circle(x,y,range_view,o_player,false,false) and !collision_circle(x,y,range_attack,o_player,false,false)) {
		var _dir = point_direction(x, y, o_player.x, o_player.y);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
	} else {
		hmove = 0;
		vmove = 0;
	}
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	if(hmove != 0 or vmove != 0)
	{
		x += hmove;
		y += vmove;
	}
	
	aim_dir = point_direction(x, y, o_player.x, o_player.y);
	my_bow.image_angle = aim_dir;
	
	if life == 0 {
		var chance = irandom_range(1,3);
		if chance = 1
			instance_create_layer(x,y,"Instances",o_life);
		if chance = 2
			instance_create_layer(x,y,"Instances",o_shield);
		if chance = 3
			instance_create_layer(x,y,"Instances",o_speed);
		instance_destroy(my_bow);
		instance_destroy();
	}
}

function collision_enemy()
{
	var _tx = x;
	var _ty = y;
	
	if(place_meeting(x+sign(_tx-x), y, o_solid))
		x = xprevious;
	if(place_meeting(x, y+sign(_ty-y), o_solid))
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
		aim_dir = 0;
		bow_dist = 8;
		fire_rate = 30;
		can_fire = true;
		arrow_speed = 8;
	
	if(hmove != 0 or vmove != 0)
		sprite_index = sp_walk;
	else
		sprite_index = sp_idle;
}

function check_fire_enemy()
{	
	if(collision_circle(x,y,range_attack,o_player,false,false)) {
		can_fire_enemy++;
		if(can_fire_enemy >= fire_rate*2) {
			var _dir = point_direction(x, y, o_player.x, o_player.y);
			if enemy_type
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow);
				else
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow1);
			bow_dist = 2;
			with(_inst)
			{
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
			can_fire_enemy = 0;
		}
	}
}