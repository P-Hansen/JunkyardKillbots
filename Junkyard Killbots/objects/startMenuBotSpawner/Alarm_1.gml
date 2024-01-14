/// @description Insert description here

var _y = irandom_range(10, room_height-10);
var _bot = choose(bigHoverBot, fridgebot, hoverbot, minibot, tredBot);
instance_create_layer(-10, _y, layer, _bot);

alarm[1] = game_get_speed(gamespeed_fps)*random_range(1,3);