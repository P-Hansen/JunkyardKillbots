/// @description removing bomb item from portrait

if (room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect" and room_get_name(room) != "rmInit" ){
	slot.item = noone;
	slot.stackCount--;
	instance_destroy(self);
}