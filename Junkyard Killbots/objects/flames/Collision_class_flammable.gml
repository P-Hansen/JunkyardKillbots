/// @description Insert description here
// You can write your code in this editor

if(other.status != "burning"){
	var flame = instance_create_layer(other.x,other.y,"Flames",obj_flame);
	flame.myTarget = other;
	other.status = "burning";
}
