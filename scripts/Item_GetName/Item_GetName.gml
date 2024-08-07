///@arg item_id
function Item_GetName() {
	var ITEM=argument[0];

	if(Item_IsValid(ITEM)){
		var INST=Item_GetItem(ITEM);
		var NAME=INST._name;
		return NAME;
	}else{
		return "";
	}


}
