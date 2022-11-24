if instance_exists(o_dev) {
	if !o_dev.UI {
		draw_self();
	}
} else draw_self();