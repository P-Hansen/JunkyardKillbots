// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomTools(){

}

//instance exists that can handle "noone"
function instance_exists2(object){
	if(object == noone){
		return false;
	} else {
		return instance_exists(object);
	}
}