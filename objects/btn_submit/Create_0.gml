/// @description 

// Inherit the parent event
event_inherited();

interact = function() {
    if (active) {
		if(click_sound != noone) audio_play_sound(snd_option_select, 1, false);
		image_blend = c_yellow
		blend_timer = 10;
		global.game_state = 1;
		global.game_state_timer = 30;
        activate_button();
    }
}


activate_button = function() {
    global.enemy_state = irandom_range(0,2);
	global.result =	checks_result(global.player_state, global.enemy_state)
	with (obj_enemy) {
		state_timer = 90;
	}
}