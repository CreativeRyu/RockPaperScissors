/// @description firing timer when player score full
// Win Game Conditions
var sum_playerscore = sum_array(global.player_scores);
var sum_enemyscore= sum_array(global.enemy_scores);
if (array_length(global.player_scores) > 1 and sum_playerscore == 2) {
	if change_room_timer < 0 {
		change_room_timer = 40;
		round_result = 1;
	}
}
// Lose Game Conditions
else if (array_length(global.player_scores) > 1 and sum_enemyscore == 2){
	if change_room_timer < 0 {
		change_room_timer = 40;
		round_result = 0;
	}
}

change_room_timer--;
