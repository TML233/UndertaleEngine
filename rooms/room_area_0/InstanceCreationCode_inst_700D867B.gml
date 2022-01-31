_cutscene_summary = function () {
	C_Execute(0, Dialog_Add_Ext, ["* This is a test cutscene."]);
	C_Execute(0, Dialog_Add_Ext, ["* This also is a test cutscene."]);
	C_Execute(0, Dialog_Start);
	C_WaitUntilDestroy(0, ui_dialog);
	Cutscene_End(1);
}