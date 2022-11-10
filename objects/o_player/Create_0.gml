//paramètres joueur
life_max = 3;
life = life_max;
walk_spd_orgn = 1.5;
walk_spd = walk_spd_orgn;
facing = 1;
candash = true;
ftime = true; //activation dash
cplayer = true; //activation changement de perso


//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 30;
can_fire = true;
arrow_speed = 8;

//set des armes et bonus (crétion)
my_bow = instance_create_layer(x, y, "Instances", o_bow);
my_shield = noone;
bonus_speed = false;
malus_para = false;

//set des sprites joueur
window_set_cursor(cr_none);
sp_idle = s_player_idle; 
sp_walk = s_player_walk; 
sp_hit = s_player_hit;