//paramètre arme et projectile
damage = 5;
range = 160;
owner_id = noone;

function arrow_die()
	//explosion de projectile
{
	speed = 0;
	var my_explo = instance_change(o_arrow_explode, false);
	with(my_explo) {
		direction = other.direction;
	}
}