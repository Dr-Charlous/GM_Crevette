walk_spd = 0.5;
facing = 1;
candash = true;
ftime = true;
life = 10;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 60;
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

sp_idle = s_enemy_idle;
sp_walk = s_enemy_walk;
sp_hit = s_enemy;
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;
range_view = 180;
range_attack = 120;
enemy_type = true;