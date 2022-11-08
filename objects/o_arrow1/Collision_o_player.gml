if (!place_meeting(x,y,owner_id) and !instance_exists(o_player.my_shield)){
		arrow_die();
		other.life -= 2;
}