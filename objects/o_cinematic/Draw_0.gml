var results = video_draw();

if results[0] == 0 {
	draw_surface(results[1], 0, 0);
}

draw_text(2,2,time);
