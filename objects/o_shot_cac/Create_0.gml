//paramètre arme et projectile
damage = 10;
range = 64;
owner_id = noone;
recul = 3;

function arrow_die()
	//explosion de projectile
{
	speed = 0;
	instance_change(o_explosion, false);
}