/// @description überprüft spieler und enemy hand zeichen
// gibt zurück wer gewonnen hat und wer verloren hat
function checks_result(player_state, enemy_state){
	if (player_state == enemy_state) {
        return "DRAW"
    }
    else if (player_state == 0 and enemy_state == 1 or player_state == 1 and enemy_state == 2 or player_state == 2 and enemy_state == 0){
        return "LOSE"
    }
    else {
        return "WON"
    }
}