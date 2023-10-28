/// @description

//spawn bots from your inventory
if (room_get_name(room) == "rmMission1"){
	var newBot = instance_create_layer(0, y, layer, body);
	newBot.creatorSlot = self;
}
