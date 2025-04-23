#region movement

var m_right = keyboard_check(vk_right);
var m_left  = keyboard_check(vk_left);
var hsp = (m_right - m_left) * _speed

if place_meeting(x + hsp, y, obj_wall) {
    while !place_meeting(x + sign(hsp), y, obj_wall) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (hsp != 0) {
	if (hsp > 0) image_xscale = 1;
	else image_xscale = -1;
}

#endregion

#region catching meals

if place_meeting(x, y, obj_meal) {
	with instance_place(x, y, obj_meal) {
		instance_destroy();
	}
	global.score_value += 1;	
}

#endregion