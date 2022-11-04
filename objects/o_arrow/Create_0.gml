/// @description Init vars
damage = 5;
range = 160;
owner_id = noone;
knockback_time = 5;

function arrow_die()
	///@desc What happen when the arrow id destroyed
{
	speed = 0;
	instance_change(o_arrow_explode, false);
}