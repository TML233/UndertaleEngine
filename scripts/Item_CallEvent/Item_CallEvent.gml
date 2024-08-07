///@arg item_id
///@arg item_event
///@arg item_slot*
function Item_CallEvent() {
	var ITEM=argument[0];
	var EVENT=argument[1];
	var SLOT=-1;
	if(argument_count>=3){
		SLOT=argument[2];
	}

	if(Item_IsValid(ITEM)&&(Item_IsSlotValid(SLOT)||SLOT==-1)){
		var INST=Item_GetItem(ITEM);
		INST._item_slot=SLOT;
		method_call(variable_struct_get(INST, EVENT),[]);
		return true;
	}else{
		return false;
	}


}
