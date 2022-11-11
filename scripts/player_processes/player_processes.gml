function reset_variables()
{
	//remettre valeur a 0 pour déplacements
	left	= 0;
	right	= 0;
	up		= 0;
	down	= 0;
	hmove   = 0;
	vmove   = 0;
	
	//apparition curseur ou non en fonction de manette co ou non
	if gamepad_is_connected(0) {
		cursor_sprite = noone;
	} else {
		cursor_sprite = s_cursor;
	}
}

function get_input()
{
	//inputs en fonction de si manette connectée ou non
	if (gamepad_is_connected(0)) {
		hmove = gamepad_axis_value(0, gp_axislh);
		vmove = gamepad_axis_value(0, gp_axislv);
	} else {
		if(keyboard_check(ord("Q"))) left	= 1;
		if(keyboard_check(ord("D"))) right	= 1;
		if(keyboard_check(ord("Z"))) up		= 1;
		if(keyboard_check(ord("S"))) down	= 1;
		hmove = right - left;
		vmove = down - up;
	}
}

function calc_movement()
{
	//condition de mort
	if life == 0 or life < 0
		room_restart();
	
	//direction pour afficher mirroir ou non
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	//mouvements
	if(hmove != 0 or vmove != 0)
	{
		//condition de dash
		if candash
		{
			if gamepad_is_connected(0)
				button_dash = gamepad_button_check(0, gp_shoulderlb);
				else
				button_dash = keyboard_check(vk_space);
				
		    if button_dash
		    {
		        candash = false;
		        alarm_set(1, dash_time);
		        walk_spd = walk_spd + dash_spd;
		    }
		}
		
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		//mouvement réel avec bonus speed
		if bonus_speed {
			x += hmove*2;
			y += vmove*2;
		} else if malus_para {
			x += 0;
			y += 0;
		} else {
			x += hmove;
			y += vmove;
		}
	}
	
	//calcul direction de cible en fonction de manette co ou non
	if gamepad_is_connected(0) {
		aim_dir = point_direction(x, y, x+gamepad_axis_value(0, gp_axisrh), y+gamepad_axis_value(0, gp_axisrv));
	} else {
		aim_dir = point_direction(x, y, mouse_x, mouse_y);
	}
	//orientation de l'arme
	my_bow.image_angle = aim_dir;
	my_bow.image_yscale = sign(_facing);
}

function bonus() 
{
	//bonus de vie
	if place_meeting(x,y,o_life) {
		if life < life_max {
			life += 2;
			if life > life_max
				life = life_max;
		}
		instance_destroy(instance_nearest(x,y,o_life));
	}
	//set bonus de bouclier
	if place_meeting(x,y,o_shield) {
		alarm[2] = 300;
		my_shield = instance_create_layer(x,y,"Instances",o_bouclier)
		instance_destroy(instance_nearest(x,y,o_shield));
		with (my_shield) owner_id = other;
	}
	//bonus de speed
	if place_meeting(x,y,o_speed) {
		bonus_speed = true;
		alarm[2] = 240;
		instance_destroy(instance_nearest(x,y,o_speed));
	}
	//malus tétraplégie
	if place_meeting(x,y,o_freeze) {
		malus_para = true;
		alarm[2] = 240;
		instance_destroy(instance_nearest(x,y,o_freeze));
	}
}

function collision()
{
	//les collisions :I
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	//distance a bouger
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
	//les animations
	if gamepad_is_connected(0) {
		button_change = gamepad_button_check_pressed(0, gp_shoulderr);
	} else {
		button_change = mouse_check_button_pressed(mb_right);
	}
	//changement de perso
	if(button_change) {
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
		arrow_speed = 4;
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
	
	//marche ou idle
	if hit {
		sprite_index = sp_hit;
	} else {
		if(hmove != 0 or vmove != 0)
			sprite_index = sp_walk;
		else
			sprite_index = sp_idle;
	}
}

function check_fire()
{
	//tirer
	if gamepad_is_connected(0) {
		button_shoot = gamepad_button_check(0, gp_shoulderrb);
	} else {
		button_shoot = mouse_check_button(mb_left)
	}
	
	//condition de tire
	if(button_shoot)
	{
		if(can_fire)
		{
			can_fire = false;
			alarm[0] = fire_rate;
			
			//direction de tire
			if gamepad_is_connected(0) {
				var _dir = point_direction(x, y, x+gamepad_axis_value(0, gp_axisrh), y+gamepad_axis_value(0, gp_axisrv));
			} else {
				var _dir = point_direction(x, y, mouse_x, mouse_y);
			}
			
			//attaques en fonction du perso
			if cplayer {
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow);
				audio_play_sound(snd_proj_distance,2,false);
				o_camera.fire = true;
				o_camera.shake_value = 0.5;
			} else {
				var _inst = instance_create_layer(x, y, "Arrow", o_arrow1);
				audio_play_sound(snd_proj_cac,2,false);
				o_camera.fire = true;
				o_camera.shake_value = 0.7;
			}
			
			//recul de l'arme et set projectile (envoie)
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