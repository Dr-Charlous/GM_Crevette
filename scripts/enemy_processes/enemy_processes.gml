
function calc_movement_enemy()
{
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

function anim_enemy()
{
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
	if(collision_circle(x,y,10,o_player,false,false))
	{
		if(can_fire)
		{
			can_fire = false;
			alarm[0] = fire_rate;
			var _dir = point_direction(x, y, o_player.x, o_player.y);
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