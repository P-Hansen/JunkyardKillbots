/// @description Insert description here

x += irandom_range(-5,5);
y += irandom_range(-5,5);

amount = 0;
textColour = c_yellow;

alarm[1] = game_get_speed(gamespeed_fps)*1.3;

audio_play_sound(sfxHit, 0, 0);