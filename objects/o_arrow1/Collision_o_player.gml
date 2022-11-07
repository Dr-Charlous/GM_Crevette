if !place_meeting(x,y,owner_id){
		arrow_die();
		other.life -= 2;
		if other.life == 0
			room_restart();
}