/// @description correct bow
//var _depth = (aim_dir > 0 and aim_dir < 180);
//my_bow1.depth = depth + _depth;
//my_bow2.depth = depth + _depth;

//direction de l'arme
my_bow1.x = x-14+ lengthdir_x(bow_dist, aim_dir);
my_bow1.y = y+ lengthdir_y(bow_dist, aim_dir);
my_bow2.x = x-4+ lengthdir_x(bow_dist, aim_dir);
my_bow2.y = y+ lengthdir_y(bow_dist, aim_dir);

bow_dist = lerp(bow_dist, 8, 0.1);