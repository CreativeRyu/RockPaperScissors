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
		
		draw_text_transformed_color(room_width/2 - title_width * 1.6 / 2, 120, title_text, 1.6, 1.6, 0, c_red, c_orange, c_orange, c_orange, 1)
		draw_text_transformed_color(room_width/2 - 100, 220, ">>Click Here<<", 1.5, 1.5, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		draw_text(460, room_height-45, "Version: 0.0.2")
		
		break;
	case rm_game:
		draw_set_font(result_font);
		var text_color = get_text_color(global.result);
		var result_width = string_width(global.result);
		draw_text_color(room_width/2- result_width / 2, 155, global.result, text_color, text_color, text_color, text_color, 1)
		
		global.player_x_cor = 112
		global.enemy_x_cor = 432
		
		array_foreach(global.player_scores, function(single_score) {
			draw_sprite(spr_score, single_score, global.player_x_cor , 235);
			global.player_x_cor += 38;
		});
		
		array_foreach(global.enemy_scores, function(single_score) {
			draw_sprite(spr_score, single_score, global.enemy_x_cor , 235);
			global.enemy_x_cor += 38;
		});
		
		
		//draw_sprite(spr_score, 0, enemy_x_cor , 235);
	
		if global.game_state == 5 {
			
		var restart_width = string_width(">>Restart<<")
		draw_text_transformed_color(room_width/2 - restart_width * 1.1 / 2, 300, ">>Restart<<", 1.1, 1.1, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		}
		break;
}	