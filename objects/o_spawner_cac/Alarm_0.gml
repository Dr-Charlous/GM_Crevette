randomize();

if spawn < spawn_max {
	var _dir = point_direction(0, 0, range, range);
	var hspawn = lengthdir_x(range, _dir);
	var vspawn = lengthdir_y(range, _dir);
	var xspawn = irandom_range(x-hspawn,x+hspawn);
	var yspawn = irandom_range(y-vspawn,y+vspawn);
	if !collision_circle(xspawn,yspawn,8,o_solid,false,true) and !collision_circle(xspawn,yspawn,8,o_trap,false,true) {
		var obj_enemy = o_enemy_cac;
		instance_create_layer(xspawn,yspawn,"Instances",obj_enemy);
		spawn += 1;
		with(obj_enemy) {
			spawner_id = other;
		}
	}
}
alarm[0] = irandom_range(180, 600);