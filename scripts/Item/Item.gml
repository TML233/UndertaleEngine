function ItemManager() : IRegisterManager("Item") constructor{}
function Item(id) : IRegisterable(id) constructor{
	name="Item";
	function OnUse(inventory,index){
		
	}
	function OnInfo(inventory,index){
		
	}
	function OnToss(inventory,index){
		var rand=irandom(18);
		var sub=0;
		if(rand<=3){
			sub=rand+1;	
		}
		Dialog_Add("{define `ITEM` `"+_name+"`}"+Lang_GetString("item.drop."+string(sub)));
		Dialog_Start();

		inventory.RemoveAt(index);
	}
}

function InventoryManager(): IRegisterManager("Inventory") constructor{}
function Inventory(id,itemManager,maxCount=8): IRegisterable(id) constructor{
	self.itemManager=itemManager;
	self.maxCount=maxCount;
	items=[];
	
	function Add(itemId){
		if(GetCount()>=maxCount){
			return false;
		}
		array_push(items,itemId);
		return true;
	}
	function Insert(index,itemId){
		var count=GetCount();
		if(count>=maxCount){
			return false;	
		}
		if(index<0||index>count){
			return false;	
		}
		array_insert(items,index,itemId);
		return true;
	}
	function RemoveAt(index){
		var count=GetCount();
		if(index<0||index>=count){
			return false;	
		}
		array_delete(items,index,1);
		return true;
	}
	function Clear(){
		array_resize(items,0);
	}
	function GetCount(){
		return array_length(items);	
	}
	function Use(index){
		var count=GetCount();
		if(index<0||index>=count){
			return false;
		}
		var itemId=Get(index);
		if(!itemManager.IsExists(itemId)){
			return false;
		}
		var obj=itemManager.Get(itemId);
		obj.OnUse(self,index);
		return true;
	}
	function Info(index){
		var count=GetCount();
		if(index<0||index>=count){
			return false;
		}
		var itemId=Get(index);
		if(!itemManager.IsExists(itemId)){
			return false;
		}
		var obj=itemManager.Get(itemId);
		obj.OnInfo(self,index);
		return true;
	}
	function Toss(index){
		var count=GetCount();
		if(index<0||index>=count){
			return false;
		}
		var itemId=Get(index);
		if(!itemManager.IsExists(itemId)){
			return false;
		}
		var obj=itemManager.Get(itemId);
		obj.OnToss(self,index);
		return true;
	}
}