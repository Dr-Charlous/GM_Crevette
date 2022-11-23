alarm[0] = 80;
instance_create_layer(0,0,"Fade",o_fade_in);
video_open("Brindi.mp4")
time = video_get_duration()/room_speed*10;
