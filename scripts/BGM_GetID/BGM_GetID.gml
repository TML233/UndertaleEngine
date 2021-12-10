///@arg bgm_slot
function BGM_GetID() {
	var SLOT=argument[0];

	if(BGM_IsSlotValid(SLOT)){
		return global._bgm_id[SLOT];
	}else{
		return -1;
	}


}
