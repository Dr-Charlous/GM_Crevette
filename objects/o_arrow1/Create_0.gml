/// @description Init vars
damage = 10;
range = 30;
owner_id = noone;
knockback_time = 10;

function arrow_die()
	///@desc What happen when the arrow id destroyed
{
	speed = 0;
	instance_change(o_arrow_explode, false);
}