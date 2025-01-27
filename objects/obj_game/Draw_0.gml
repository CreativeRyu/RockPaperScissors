/// @description Draw Event
// Display Game Text

if (fade_in) {
fade_alpha -= fade_speed; // Fade in
if (fade_alpha <= 0.2) {
	fade_alpha = 0.2;
	fade_in = false; // Switch to fade out when fully faded in
	}
} else {
fade_alpha += fade_speed; // Fade out
if (fade_alpha >= 1) {
	fade_alpha = 1;
	fade_in = true; // Switch to fade in when fully faded out
	}
}

switch(room) {
	case rm_start:
		// Display Game Title
		draw_set_font(title_font)
		draw_text_color(room_width/2 - title_width / 2, 40, title_text, c_white, c_orange, c_white, c_white, 1);

		// Display Game Add Title
		draw_set_font(add_text_font)
		draw_text_color(room_width/2 - add_width / 2, 110, title_add, c_white, c_orange, c_white, c_white, 1);

		draw_set_font(regular_text_font)
		draw_text_color(room_width/2 - 100, 350, ">>Start Game<<", c_white, c_white, c_white, c_white, fade_alpha)
		draw_set_font(version_text_font)
		draw_text(450, room_height-30, "Version: 0.0.4")
		
		break;
	case rm_game:
		with(obj_enemy){
			if(state_timer>0){
				draw_set_font(result_font);
				var text_color = get_text_color(global.result);
				var result_width = string_width(global.result);
				score_sfx = get_result_sound(global.result);
				if (global.game_state = 0) {
					if (not audio_is_playing(score_sfx)){
						audio_play_sound(score_sfx, 1, false);
					}
					draw_text_color(room_width/2- result_width / 2, 155, global.result, text_color, text_color, text_color, text_color, 1)
				}
			}
		}

		global.player_x_cor = 112
		global.enemy_x_cor = 432
		// Display Player Scores
		array_foreach(global.player_scores, function(single_score) {
			draw_sprite(spr_score, single_score, global.player_x_cor , 235);
			global.player_x_cor += 38;
		});
		// Display Enemy Scores
		array_foreach(global.enemy_scores, function(single_score) {
			draw_sprite(spr_score, single_score, global.enemy_x_cor , 235);
			global.enemy_x_cor += 38;
		});
		break;
	case rm_gameover:
		draw_set_font(title_font)
		var screen_text = ""
		if (global.game_result == 0) {
			screen_text = "GAME OVER";
			var screen_text_width = string_width(screen_text);
			draw_text_color(room_width/2 - screen_text_width/2, 180, screen_text, c_white, c_red, c_red,c_white, 1)
		}
		else {
			screen_text = "YOU WON";
			var screen_text_width = string_width(screen_text);
			draw_text_color(room_width/2 - screen_text_width/2, 180, screen_text, c_white, c_yellow, c_orange,c_white, 1)
		}
		draw_set_font(regular_text_font)
		var restart_width = string_width(">>Restart<<")
		draw_text_color(room_width/2 - restart_width/ 2, 300, ">>Restart<<",c_white, c_aqua, c_aqua,c_white, fade_alpha)
}	