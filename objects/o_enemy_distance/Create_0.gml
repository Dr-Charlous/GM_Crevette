life = 3;
walk_spd_orgn = 0.5;
walk_spd = walk_spd_orgn;
range_view = 180;
range_attack = 120;
facing = 1;
enemy_type = true;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 60;
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

//les sprites de l'ennemis en question
sp_idle = s_enemy_idle_dis;
sp_walk = s_enemy_walk_dis;
sp_hit = s_enemy_dis;

//paramètres d'action du bot
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;