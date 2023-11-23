/// @description Insert description here

if(room_get_name(room) != "rmHome" and room_get_name(room) != "rmRepair" and room_get_name(room) != "rmMissionSelect"){
	global.scavengerBonus -= bonus;
}