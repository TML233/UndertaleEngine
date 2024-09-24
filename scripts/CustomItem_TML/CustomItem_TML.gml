function CustomItem_TML() : ItemType() constructor{
	function GetName(){
		return "TML";
	}
		
	function OnUse(inventory,index){
		inventory.Remove(index);
		Dialog_Start();
	}
	
	function OnInfo(inventory,index){
		Dialog_Add("* TML - Useless&* The creator of this engine,&  as well as a lazy ass.{pause}{clear}* Better throw it on&  the ground.");
		Dialog_Start();
	}
	
	function OnDrop(inventory,index){
		Dialog_Add("* You put TML on the ground.&{sleep 20}* He runs away.");
		Dialog_Start();
		inventory.Remove(index);
	}
}