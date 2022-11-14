life = 4; //4 normalement
walk_spd_orgn = 1;
walk_spd = walk_spd_orgn;
range_view = 200;
range_attack = 40;
facing = 1;
enemy_type = false;
hit = false;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 60;
can_fire = true;
arrow_speed = 8;

//les sprites de l'ennemis en question
sp_idle = s_enemy_idle_cac;
sp_walk = s_enemy_walk_cac;
sp_hit = s_enemy_cac;

//paramètres d'actions du bot
counter = 0;
hmove   = 0;
vmove   = 0;
action = 10;
can_fire_enemy = 0;

my_bow1 = instance_create_depth(x, y, -10, o_wpn1);
my_bow2 = instance_create_depth(x, y, -10, o_wpn1);