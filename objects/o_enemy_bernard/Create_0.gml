life = 3;
walk_spd_orgn = 0.5;
walk_spd = walk_spd_orgn;
range_view = 180;
range_attack = 100;
facing = 1;
enemy_type = 3;
hit = false;
spawner_id = noone;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 60;
can_fire = true;
arrow_speed = 8;

//les sprites de l'ennemis en question
sp_idle = s_enemy_idle_dis;
sp_walk = s_enemy_walk_dis;
sp_hit = s_enemy_hit_dis;
sp_dead = s_enemy_dead_dis;

//paramètres d'action du bot
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;

my_bow1 = instance_create_depth(x, y, 99, o_wpn_enemy_dis);
my_bow2 = instance_create_depth(x, y, 99, o_wpn_enemy_dis);