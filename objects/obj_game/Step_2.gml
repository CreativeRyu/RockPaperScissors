/// @description Changing Rooms and Game States
if(room == rm_start) {
	if mouse_check_button_pressed(mb_left) {
		room_goto(rm_game)
	}
} 
else if (room == rm_game and change_room_timer == 0) {
	room_goto(rm_gameover)
	
} 
else if (room == rm_gameover) {
	if mouse_check_button_pressed(mb_left) {
		game_restart()
	}
}
