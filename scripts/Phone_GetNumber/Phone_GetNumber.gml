function Phone_GetNumber() {
	var proc=0;
	var num=0;
	repeat(8){
		if(Phone_IsValid(Phone_Get(proc))){
			num+=1;
		}
		proc+=1;
	}
	return num;


}
