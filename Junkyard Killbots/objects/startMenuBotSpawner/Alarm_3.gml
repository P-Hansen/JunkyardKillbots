/// @description Insert description here

var _y = irandom_range(-20, room_height-20);

for(var i = 3; i > 0; i--){
	var _bot = bot;//choose(bot, bigHoverBot, fridgebot, hoverbot, minibot, tredBot);
	instance_create_layer(-10, _y+i*21, layer, _bot);
}

alarm[3] = game_get_speed(gamespeed_fps)*random_range(3,10);