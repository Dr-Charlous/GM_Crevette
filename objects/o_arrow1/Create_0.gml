//paramètre arme et projectile
damage = 10;
range = 30;
owner_id = noone;
recul = 10;

function arrow_die()
	//explosion de projectile
{
	speed = 0;
	instance_change(o_arrow_explode, false);
}