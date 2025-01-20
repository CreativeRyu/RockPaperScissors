/// @description Changing Rooms
if(room == rm_start) {
	if mouse_check_button_pressed(mb_left) {
		room_goto(rm_game)
	}
} else if (room == rm_game and global.game_state == 5) {
	if mouse_check_button_pressed(mb_left) {
		game_restart()
	}
}