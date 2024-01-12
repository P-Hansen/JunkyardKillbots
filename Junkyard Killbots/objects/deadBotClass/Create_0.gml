/// @description Insert description here

audio_play_sound(sfxMetalHit, 10, false);
smokeParticles = part_system_create(particleSystemSmoke);
part_system_position(smokeParticles, x, y-3);
part_system_depth(smokeParticles, depth+1);
