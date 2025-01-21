/// @description Create Event
// Start Variables
title_text = "ROCK PAPER SCISSORS";
title_width = string_width(title_text);

fade_in = true;
fade_alpha = 1;
fade_speed = 0.016;

global.game_state = 0;
global.result = "";
randomize()