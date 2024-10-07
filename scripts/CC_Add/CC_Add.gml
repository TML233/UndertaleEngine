///@arg text
///@arg time*
function CC_Add() {
	var TEXT=argument[0];
	var TIME=60;
	if(argument_count>=2){
		TIME=argument[1];
	}

	with(closed_captions){
		ds_queue_enqueue(_queue_text,TEXT);
		ds_queue_enqueue(_queue_duration,TIME);
	}

	return true;


}
