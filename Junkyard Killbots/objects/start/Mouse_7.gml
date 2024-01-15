/// @description Insert description here
audio_stop_all();
//audio_play_sound(sfxLevelStart, 10, false);
//room_goto(rmRepair);
global.nextLevel = rmRepair;
if (layer_exists("transition")){
	layer_destroy("transition");
}
var _lay = layer_create(-9999,"transition");
layer_sequence_create(_lay, 0, 0, seqTransition1);	
audio_play_sound(sfxLevelStart, 10, false);
