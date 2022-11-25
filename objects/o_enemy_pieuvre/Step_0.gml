//condition de tire si vue a bonne distance
can_fire_enemy++;
if(can_fire_enemy >= fire_rate*2) {
	var _dir = point_direction(x, y, o_player.x, o_player.y);
			
	if !collision_line(x,y,o_player.x,o_player.y,o_solid,false,false) {
		//type d'attaque en fonction de l'ennemi
		var _inst = instance_create_layer(x, y, "Shot", o_shot_dis);
		audio_play_sound(snd_octopus,2,false);
			
		//set de l'attaque en gros comme player
		bow_dist = 2;
		with(_inst)
		{
			sprite_index = o_enemy_pieuvre.sp_shot;
			speed = other.arrow_speed;
			direction = _dir;
			image_angle = _dir;
			owner_id = other;
		}
		can_fire_enemy = 0;
	}
}
if x > o_player.x 
	facing = 1;
else
	facing = -1;