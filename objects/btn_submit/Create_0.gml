/// @description 

// Inherit the parent event
event_inherited();

activate_button = function() {
    global.enemy_state = irandom_range(0,2);
	global.result =	checks_result(global.player_state, global.enemy_state)
	with (obj_enemy) {
		state_timer = 90;
	}
}