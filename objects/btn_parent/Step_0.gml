/// @description count down blend_timer and active timer
if blend_timer > 0 {
	blend_timer--;
}
else {
	image_blend = c_white;
}

if (global.game_state != 0 and _active_timer == 0) {
	_active_timer = 30;
}
else if (_active_timer <= 0) 
{	
	_active_timer = 0;
}
else {
	_active_timer--;
}

if (_active_timer > 0) {
	active = false;
}
else {
	active = true;
}