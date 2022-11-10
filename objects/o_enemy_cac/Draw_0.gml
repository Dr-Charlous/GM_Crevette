//affichage sprite en fonction miroir
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

//affichage vision
draw_circle(x,y,range_view,true);
draw_circle(x,y,range_attack,true);

//vie et type
draw_text(x,y,"cac");
draw_text(x,y+10,life);