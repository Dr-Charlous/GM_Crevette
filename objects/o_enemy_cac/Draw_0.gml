/// @description draw correct facing
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

draw_circle(x,y,range_view,true);
draw_circle(x,y,range_attack,true);
draw_text(x,y,"cac");

draw_text(x,y,life);