/// @description Insert description here

if(room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect" and room_get_name(room) != "rmMissionSelect2" and room_get_name(room) != "rmStore" and room_get_name(room) != "rmMissionSelect3" and room_get_name(room) != "rmStartMenu"){
	global.scavengerBonus -= bonus;
}