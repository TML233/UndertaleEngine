if(GMU_CONSOLE_ENABLED){
	repeat(Console_GetInputNumber()){
		var input=Console_GetInput();
		Console_OutputLine("] "+input);
		var parse=Console_ParseCmd();
		if(parse){
			Console_ProcessCmd();
		}
		Console_PopInput();
	}
	return true;
}else{
	return false;
}