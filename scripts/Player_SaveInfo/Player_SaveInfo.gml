///@arg slot
///@arg flag_name
///@arg path

var SLOT=argument[0];
var FLAG_NAME=argument[1];
var PATH="";

if (argument_count >= 2)
	PATH=argument[2];

Flag_SetSaveSlot(SLOT);

Flag_Save(FLAG_NAME, PATH);
return true;