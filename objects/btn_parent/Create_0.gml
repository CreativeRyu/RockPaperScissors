/// @description Button Parent
blend_timer = 0;
_active_timer = 30;
interact = function() {
    if (active) {
		if(click_sound != noone) audio_play_sound(click_sound, 1, false);
		image_blend = c_yellow
		blend_timer = 10;
		active = false;
        activate_button();
    }
}

activate_button = function() {
    show_debug_message("Button Message")
}