// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function get_result_sound(game_result){
	switch(game_result){
		case "DRAW":
			return snd_draw;
		case "LOSE":
			return snd_nopoint;
		case "WON":
			return snd_point;
	}
}