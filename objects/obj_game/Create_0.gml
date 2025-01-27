/// @description Create Event
// Start Variables
draw_set_font(title_font);
title_text = "ROCK PAPER SCISSORS";
title_width = string_width(title_text);
draw_set_font(add_text_font)
title_add = "Auf Suess";
add_width = string_width(title_add);

fade_in = true;
fade_alpha = 1;
fade_speed = 0.016;

global.game_state = 0;
global.result = "";
global.player_scores = [];
global.enemy_scores = [];
global.game_result = noone;

change_room_timer = noone;
global.game_state_timer = 0;
score_sfx = noone;

randomize()