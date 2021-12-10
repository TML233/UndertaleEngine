function Dialog_Uninit() {
	ds_queue_destroy(global._dialog_queue);
	return true;


}
