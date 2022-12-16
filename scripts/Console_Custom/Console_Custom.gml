function Console_Custom() {
#macro GMU_CONSOLE_ENABLED false
#macro GMU_CONSOLE_CONFIG_DLL "./bin/gmu_console.dll"

	Console_DefineMacro("true",true);
	Console_DefineMacro("false",false);
	Console_DefineMacro("undefined",undefined);


}
