audio_stop_all()
if (global.game_result > 0) {
	audio_play_sound(snd_win, 1, false);
}
else {
	audio_play_sound(snd_gameover, 1, false);
}