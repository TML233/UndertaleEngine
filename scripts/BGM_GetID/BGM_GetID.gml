///@arg bgm_slot
function BGM_GetID(SLOT) {


	if(BGM_IsSlotValid(SLOT)){
		return global._bgm_id[SLOT];
	}else{
		return -1;
	}


}
