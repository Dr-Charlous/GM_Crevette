//affichage sprite en fonction miroir
draw_sprite_ext(sprite_index, image_index, x+5, y+3, facing, 0.5, 0, c_black, 0.3);
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

if o_dev.UI {
	//affichage vision
	draw_circle(x,y,range_view,true);
	draw_circle(x,y,range_attack,true);

	//vie et type
	draw_text(x,y,"distance");
	draw_text(x,y+10,life);
}