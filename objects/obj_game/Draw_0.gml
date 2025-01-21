/// @description Draw Event
// Display Game Text

/// @description Hier Beschreibung einfügen
draw_text_transformed(room_width/2 - title_width * 1.5 / 2, 32, title_text, 1.5, 1.5, 0)

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
		draw_text_transformed_color(room_width/2 - 100, 155, ">>Click Here<<", 1.5, 1.5, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		
		break;
	case rm_game:	
		var result_width = string_width(global.result)
		draw_text(room_width/2- result_width / 2, 155, global.result)
	
		if global.game_state == 5 {
			
		var restart_width = string_width(">>Restart<<")
		draw_text_transformed_color(room_width/2 - restart_width * 1.1 / 2, 300, ">>Restart<<", 1.1, 1.1, 0,c_white, c_aqua, c_aqua,c_white, fade_alpha)
		}
		break;
}	