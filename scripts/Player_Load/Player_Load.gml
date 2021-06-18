///@arg slot
var SLOT=argument[0];

Flag_SetSaveSlot(SLOT);

Flag_Load(FLAG_TYPE.STATIC);
Flag_Load(FLAG_TYPE.DYNAMIC);
Flag_Load(FLAG_TYPE.INFO);

for(var i=0; i<array_length_1d(global.kills); i++)
	Flag_LoadKills(i);

return true;