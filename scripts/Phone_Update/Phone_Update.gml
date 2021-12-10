function Phone_Update() {
	var proc=0;
	var slot=0;

	repeat(8){
		var PHONE=Phone_Get(proc);
		if(Phone_IsValid(PHONE)){
			Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+proc,-1);
			Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PHONE+slot,PHONE);
			slot+=1;
		}
		proc+=1;
	}
	return true;


}
