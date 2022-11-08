walk_spd_orgn = 1.5;
walk_spd = walk_spd_orgn;
facing = 1;
candash = true;
ftime = true;
cplayer = true;
life_max = 10;
life = life_max;

//bow
aim_dir = 0;
bow_dist = 8;
fire_rate = 30;
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);
my_shield = noone;

//cursor_sprite = s_cursor;
window_set_cursor(cr_none);

sp_idle = s_player_idle; 
sp_walk = s_player_walk; 
sp_hit = s_player_hit;
bonus_speed = false;

view_visible[0] = true;
view_visible[1] = false;