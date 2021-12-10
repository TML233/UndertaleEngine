function Item_Update() {
	var proc=0;
	var slot=0;

	repeat(8){
		var ITEM=Item_Get(proc);
		if(Item_IsValid(ITEM)){
			Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+proc,-1);
			Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+slot,ITEM);
			slot+=1;
		}
		proc+=1;
	}
	return true;


}
