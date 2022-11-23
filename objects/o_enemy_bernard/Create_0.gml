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
sp_idle = spr_bernard_walk;
sp_walk = spr_bernard_walk;
sp_hit = s_enemy_hit_dis;
sp_dead = spr_bernard_walk;

//paramètres d'action du bot
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;

my_bow1 = instance_create_depth(x, y, 99, o_wpn_enemy_bernard);
my_bow2 = instance_create_depth(x, y, 99, o_wpn_enemy_bernard);