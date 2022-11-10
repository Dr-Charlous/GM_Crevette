//code dash, cooldown
if ftime {
	walk_spd = walk_spd_orgn;
	ftime = false;
	alarm[1] = dash_cooldown;
} else {
	candash = true;
	ftime = true;
}