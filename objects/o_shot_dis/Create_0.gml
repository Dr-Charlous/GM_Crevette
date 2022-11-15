//paramètre arme et projectile
damage = 5;
range = 960;
owner_id = noone;
recul = 1.2;

function arrow_die()
	//explosion de projectile
{
	speed = 0;
	var my_explo = instance_change(o_explosion, false);
	with(my_explo) {
		direction = other.direction;
	}
}