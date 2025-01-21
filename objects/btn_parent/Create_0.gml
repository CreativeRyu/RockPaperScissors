/// @description Button Parent
blend_timer = 0;
interact = function() {
    if (active) {
		if(click_sound != noone) audio_play_sound(click_sound, 1, false);
		image_blend = c_yellow
		blend_timer = 10;
        activate_button();
    }
}

activate_button = function() {
    show_debug_message("Button Message")
}