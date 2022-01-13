var _inst = id, xx = _x_dest, yy = _y_dest, spd = _movement_speed;
with (_moving_object) {
	// Check if distance is more than the speed
	if (point_distance(x, y, xx, yy) >= spd) {
		var direc = point_direction(x, y, xx, yy),
			ldirx = lengthdir_x(spd, direc),
			ldiry = lengthdir_y(spd, direc);
		
		x += ldirx;
		y += ldiry;
		moveable = false;
		direction = direc;
		image_index += 0.2;
		dir = Char_ConvertDirection(id);
	}
	else {
		image_speed = 0;
		image_index = 0;
		moveable = true;
		x = xx;
		y = yy;
		
		instance_destroy(_inst);
	}
}