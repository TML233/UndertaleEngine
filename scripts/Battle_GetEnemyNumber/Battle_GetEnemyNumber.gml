function Battle_GetEnemyNumber() {
	var num=0;
	var proc=0;

	repeat(3){
		if(instance_exists(Battle_GetEnemy(proc))){
			num+=1;
		}
		proc+=1;
	}

	return num;


}
