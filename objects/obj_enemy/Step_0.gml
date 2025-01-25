/// @description Step Event Enemy

switch (global.enemy_state) {
    case 0:
        sprite_index = hand_signs[0];
        break;
    case 1:
        sprite_index = hand_signs[1];
        break;
    case 2:
        sprite_index = hand_signs[2];
        break;
	case 3:
		sprite_index = hand_signs[3];
        break;
}

if (state_timer > 0){
	state_timer--;
}
else{
	state_timer = 0;
	global.enemy_state = 3;
}