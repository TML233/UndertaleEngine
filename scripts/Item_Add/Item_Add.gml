///@arg item_id
function Item_Add(ITEM) {
	if(Item_GetNumber()<8){
		Item_Set(Item_GetNumber(),ITEM);
		return true;
	}else{
		return false;
	}
}
