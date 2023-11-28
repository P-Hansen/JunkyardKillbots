/// @description self repair

hp = clamp(hp + healAmount, 0, maxHp);
var number = instance_create_depth(x, y, -1, damageNumber);
number.amount = healAmount;
number.textColour = c_lime;

alarm[2] = game_get_speed(gamespeed_fps)*1;