// adds the round result to the array
function add_results(player_state, enemy_state){
    if(player_state == enemy_state){
        return
    }

    else if (player_state == 0 and enemy_state == 1 or player_state == 1 and enemy_state == 2 or player_state == 2 and enemy_state == 0){
        array_push(global.player_scores, 0);
        array_push(global.enemy_scores, 1);
    }
    else {
        array_push(global.player_scores, 1);
        array_push(global.enemy_scores, 0);
    }
}