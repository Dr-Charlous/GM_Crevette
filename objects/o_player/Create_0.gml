//paramètres joueur
life_max = 5;
life = life_max;
my_score = 0;

walk_spd_orgn = 2.5;
walk_spd = walk_spd_orgn;

candash = true;
dash_spd = 10;
dash_time = 5;
dash_cooldown = 60;

facing = 1; //direction sprite
ftime = true; //activation dash
cplayer = true; //activation changement de perso
hit = false;


//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 30;
can_fire = true;
arrow_speed = 16;

//set des armes et bonus (crétion)
my_bow = instance_create_layer(x, y, "Instances", o_wpn_dis);
my_shield = noone;
bonus_speed = false;
malus_para = false;

//set des sprites joueur
window_set_cursor(cr_none);
sp_idle = s_player_idle_dis; 
sp_walk = s_player_walk_dis; 
sp_hit = s_player_hit_dis;
s_bo = s_wpn_dis;
s_bo_shot = s_wpn_dis_shot;
s_swap_perso = s_swap_dis;
s_para_perso = s_player_para_dis;