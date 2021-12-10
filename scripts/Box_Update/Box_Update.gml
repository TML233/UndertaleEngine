function Box_Update() {
	var proc=0;
	var slot=0;
	var box_slot=0;
	repeat(2){
		repeat(10){
			var ITEM=Box_Get(box_slot,proc);
			if(Item_IsValid(ITEM)){
				Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+10*box_slot+proc,-1);
				Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BOX+10*box_slot+slot,ITEM);
				slot+=1;
			}
			proc+=1;
		}
		box_slot+=1;
	}
	return true;


}
