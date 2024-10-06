///@arg text
function Dialog_Add(text) {
	ds_queue_enqueue(global._dialog_queue,text);
	return true;


}
