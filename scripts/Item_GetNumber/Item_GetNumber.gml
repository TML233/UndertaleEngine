function Item_GetNumber() {
	var proc=0;
	var num=0;
	repeat(8){
		if(Item_IsValid(Item_Get(proc))){
			num+=1;
		}
		proc+=1;
	}
	return num;


}
