/// @description Insert description here
// You can write your code in this editor

direction = point_direction(x, y, room_width, 8);
speed = 15;

audio_sound_pitch(sfxItemPickup, random_range(0.8, 1));
audio_play_sound(sfxItemPickup, 10, false);