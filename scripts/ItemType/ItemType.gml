// Override GetName OnUse OnInfo OnDrop(optional) to make an useful item type.
// OnDrop already has a default implementation.
function ItemType() constructor{
	function GetName() {
		return "Item";
	}
	
	function OnUse(inventory, index) {}
	function OnInfo(inventory, index) {}
	function OnDrop(inventory, index) {
		var rand=irandom(18);
		var sub=0;
		switch(rand){
			case 0: sub=1; break;
			case 1: sub=2; break;
			case 2: sub=3; break;
			case 3: sub=4; break;
		}
		Dialog_Add("{define `ITEM` `"+GetName()+"`}"+Lang_GetString("item.drop."+string(sub)));
		Dialog_Start();

		inventory.Remove(index);
	}
}

// ItemTypeSimple uses localized strings "item.keyId.name" and "item.keyId.info"
// as its name and info text. It also recieves a function that is called when OnUse.
// The function will be rebound to the item type struct.
function ItemTypeSimple(keyId, funcOnUse) : ItemType() constructor{
	self.nameKey=$"item.{keyId}.name";
	self.infoTextKey=$"item.{keyId}.info";
	
	function GetName(){
		return Lang_GetString(nameKey,nameKey);
	}
	function OnInfo(inventory,index){
		return Lang_GetString(infoTextKey,infoTextKey);
	}
	OnUse=method(self,funcOnUse);
}