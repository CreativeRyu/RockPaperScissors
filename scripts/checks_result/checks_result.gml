/// @description überprüft spieler und enemy hand zeichen
// gibt zurück wer gewonnen hat und wer verloren hat
function checks_result(player_state, enemy_state){
	if (player_state == enemy_state) {
        return "DRAW"
    }
    else if (player_state == 0 and enemy_state == 1 or player_state == 1 and enemy_state == 2 or player_state == 2 and enemy_state == 0){
        array_push(global.player_scores, 0);
        array_push(global.enemy_scores, 1);
        return "LOSE"
    }
    else {
        array_push(global.player_scores, 1);
        array_push(global.enemy_scores, 0);
        return "WON"
    }
}