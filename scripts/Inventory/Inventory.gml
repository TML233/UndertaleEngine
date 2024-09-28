

function Inventory(itemTypeManager,capacity) constructor{
	itemIds = [];
	function GetRawArray(){
		return itemIds;
	}
	function SetRawArray(arr){
		itemIds=arr;
		Normalize();
	}
	
	self.itemTypeManager=itemTypeManager;
	function IsItemTypeValid(itemId){
		return itemTypeManager.IsValid(itemId);
	}
	function IsItemTypeEmptyOrValid(itemId){
		return itemTypeManager.IsEmptyOrValid(itemId);
	}
	
	self.capacity = capacity;
	function GetCapacity(){
		return capacity;
	}
	function GetCount(){
		return array_length(itemIds);
	}
	
	function Get(index){
		var count=GetCount();
		if(index<0||index>=count){
			show_error($"Inventory index out of range({index}>={count})!",true);
			return undefined;
		}
		
		return itemIds[index];
	}
	function GetOrEmpty(index){
		var capacity=GetCapacity();
		if(index<0||index>=capacity){
			show_error($"Inventory index out of range({index}>={capacity})!",true);
			return undefined;
		}
		if(index>=GetCount()){
			return ITEM_EMPTY;
		}
		
		return itemIds[index];
	}
	function GetItem(index){
		var typeId=Get(index);
		var itemType=itemTypeManager.Get(typeId);
		return itemType;
	}
	function GetItemOrUndefined(index){
		var typeId=GetOrEmpty(index);
		if(typeId==ITEM_EMPTY){
			return undefined;
		}
		var itemType=itemTypeManager.GetOrUndefined(typeId);
		return itemType;
	}
	
	// Normalize is the process that removes all invalid items and empty spaces between items.
	function Normalize(){
		var slot=0;
		var length=array_length(itemIds);
		var capacity=GetCapacity();
		if(length>capacity){
			array_resize(itemIds,capacity);
			length=capacity;
		}
		for(var i=0;i<length;i+=1){
			var itemId=itemIds[i];
			if(IsItemTypeValid(itemId)){
				itemIds[i]=ITEM_EMPTY;
				itemIds[slot]=itemId;
				slot+=1;
			}
		}
		if(length!=slot){
			array_resize(itemIds,slot);
		}
	}
	
	function Set(index, itemId){
		if(itemId==ITEM_EMPTY){
			return Remove(index);
		}
		
		if(!IsItemTypeValid(itemId)){
			show_error("Item type does not exist in inventory's item type manager!",true);
			return false;
		}
		var count=GetCount();
		if(index<0||index>=count){
			show_error($"Inventory index out of range({index}>={count})!",true);
			return false;
		}
		
		itemIds[index]=itemId;
		return true;
	}
	
	function Remove(index){
		var count=GetCount();
		if(index<0||index>=count){
			show_error($"Inventory index out of range({index}>={count})!",true);
			return false;
		}
		
		array_delete(itemIds,index,1);
		return true;
	}
	
	function Clear(){
		array_resize(itemIds,0);
		return true;
	}
	
	function Insert(index,itemId){
		if(!IsItemTypeValid(itemId)){
			show_error("Item type does not exist in inventory's item type manager!",true);
			return false;
		}
		
		var count=GetCount();
		if(index<0||index>count){
			show_error($"Inventory index out of range({index}>{count})!",true);
			return false;
		}
		if(count>=GetCapacity()){
			show_debug_message($"Failed to insert item {itemId} because inventory is full!");
			return false;
		}
		
		array_insert(itemIds,index,itemId);
		return true;
	}
	
	function Add(itemId){
		return Insert(GetCount(),itemId);
	}
	
	function GetItemName(index){
		return GetItem(index).GetName();
	}
	function InvokeItemUse(index){
		GetItem(index).OnUse(self,index);
	}
	function InvokeItemInfo(index){
		GetItem(index).OnInfo(self,index);
	}
	function InvokeItemDrop(index){
		GetItem(index).OnDrop(self,index);
	}
}