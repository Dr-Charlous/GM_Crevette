walk_spd_orgn = 1;
walk_spd = walk_spd_orgn;
facing = 1;
candash = true;
ftime = true;
life = 4;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 60;
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

sp_idle = s_enemy_idle_cac;
sp_walk = s_enemy_walk_cac;
sp_hit = s_enemy_cac;
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;
range_view = 200;
range_attack = 40;
enemy_type = false;