/// @description removing bomb item from portrait

if (room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect" and room_get_name(room) != "rmInit" and room_get_name(room) != "rmMissionSelect2" and room_get_name(room) != "rmStore" and room_get_name(room) != "rmMissionSelect3" and room_get_name(room) != "rmStartMenu"){
	if(slot.object_index != anyItemSlot){
		slot.item = noone;
		slot.stackCount--;
		instance_destroy(self);
	}
}
