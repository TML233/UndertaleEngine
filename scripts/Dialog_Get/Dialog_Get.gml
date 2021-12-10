function Dialog_Get() {
	var TEXT=ds_queue_dequeue(global._dialog_queue);

	return (is_string(TEXT) ? TEXT : "");


}
