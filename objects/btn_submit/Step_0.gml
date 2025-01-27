/// @description 

// Inherit the parent event
event_inherited();

show_debug_message(active)
show_debug_message("Button Timer: "+ string(_active_timer))
if (_active_timer > 0) {
	image_blend = c_grey;
}