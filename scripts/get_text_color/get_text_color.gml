
function get_text_color(game_result){
	switch(game_result){
		case "DRAW":
			return c_orange;
		case "LOSE":
			return c_fuchsia;
		case "WON":
			return c_lime;
		
		default:
			return c_white;
	}
}