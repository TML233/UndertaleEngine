#macro ITEM_TYPE_EMPTY ""

function Inventory(size) : RegisterManager() constructor{
	itemIds = [];
	
	self.size = size;
	function EnsureSize(){
		var length=array_length(itemIds);
		if(length!=size){
			array_resize(itemIds,size);
		}
		if(length<size){
			for(var i=length;i<size;i+=1){
				itemIds[i]="";
			}
		}
	};
	function GetSize(){
		return size;
	}
	
	function Get(index){
		EnsureSize();
			
		if(index<0||index>=size){
			show_error($"Inventory index out of range({index}>={size})!",true);
			return false;
		}
			
		return itemIds[index];
	}
		
	static itemTypeManager=GLOBAL_ITEM_TYPE_MANAGER;
	function IsItemTypeValid(itemId){
		return itemId!=ITEM_TYPE_EMPTY && itemTypeManager.Contains(itemId);
	}
	
	// Normalize is the process that removes all invalid items and empty spaces between items.
	function Normalize(){
		EnsureSize();
			
		var slot=0;
		for(var i=0;i<size;i+=1){
			var itemId=itemIds[i];
			if(!IsItemTypeValid(itemId)){
				SetWithoutNormalize(i,"");
				SetWithoutNormalize(slot,itemId);
				slot+=1;
			}
		}
	}
	
	function SetWithoutNormalize(index, itemId){
		EnsureSize();
			
		if(index<0||index>=size){
			show_error($"Inventory index out of range({index}>={size})!",true);
			return false;
		}
			
		itemIds[index]=itemId;
		return true;
	}
	function Set(index, itemId){
		if(!SetWithoutNormalize(index,itemId)){
			return false;
		}
			
		Normalize();
		return true;
	}
	
	function Remove(index){
		return Set(index,ITEM_TYPE_EMPTY);
	}
	
	function Clear(){
		EnsureSize();
		for(var i=0;i<size;i+=1){
			itemIds[index]=ITEM_TYPE_EMPTY;
		}
		return true;
	}
	
	// Will NOT normalize. Only counts the number of slots that are not empty.
	function GetCount(){
		EnsureSize();
			
		var count=0;
		for(var i=0;i<size;i+=1){
			if(itemIds[i]!=ITEM_TYPE_EMPTY){
				count+=1;
			}
		}
		return count;
	}
	
	function Add(itemId){
		Normalize();
		if(Get(size-1)!=ITEM_TYPE_EMPTY){
			show_debug_message($"Failed to add item {itemId} because inventory is full!");
			return false;
		}
		return Set(size-1,itemId);
	}
	
	// func(inventory, index, itemType)
	function InvokeItem(index,func){
		var typeId=Get(index);
		var itemType=itemTypeManager.GetOrUndefined(typeId);
		if(is_undefined(itemType)){
			show_debug_message("Cannot invoke an item type that doesn't exist!");
			return false;
		}
		return func(self, index, itemType);
	}
	
	function InvokeItemUse(index){
		InvokeItem(index,function(inventory,index,itemType){
			itemType.OnUse(inventory,index);
		});
	}
	function InvokeItemInfo(index){
		InvokeItem(index,function(inventory,index,itemType){
			itemType.OnInfo(inventory,index);
		});
	}
	function InvokeItemDrop(index){
		InvokeItem(index,function(inventory,index,itemType){
			itemType.OnDrop(inventory,index);
		});
	}
	
	EnsureSize();
}