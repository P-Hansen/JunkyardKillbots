///@function damage_variable_destroy(targetVar,limit,targetInst)
///@argument targetVar
///@argument limit
///@argument targetInst
function damage_variable_destroy(argument0, argument1, argument2) {

	//Initialize Variables
	var targetVar, limit, targetInst;
	targetVar = argument0;
	limit = argument1;
	targetInst = argument2;

	//Check if target variable is equal or less than the allowed limit, return true or false
	if targetVar <= limit
	{
		return true;
	}
	else
	{
		return false;
	}



}
