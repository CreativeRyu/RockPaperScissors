/// @description Step Event
// switch between player handsigns

switch (global.player_state) {
    case 0:
        sprite_index = hand_signs[0];
        break;
    case 1:
        sprite_index = hand_signs[1];
        break;
    case 2:
        sprite_index = hand_signs[2];
        break;
}