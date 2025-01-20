/// @description Button Parent
interact = function() {
    if (active) {
		if(click_sound != noone) audio_play_sound(click_sound, 1, false);
        activate_button();
    }
}

activate_button = function() {
    show_debug_message("Button Message")
}