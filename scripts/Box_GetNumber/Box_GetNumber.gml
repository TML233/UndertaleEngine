///@arg box_slot
function Box_GetNumber() {
	var SLOT=argument[0];

	if(Box_IsBoxSlotValid(SLOT)){
		var proc=0;
		var num=0;
		repeat(10){
			if(Item_IsValid(Box_Get(SLOT,proc))){
				num+=1;
			}
			proc+=1;
		}
		return num;
	}else{
		return 0;
	}


}
