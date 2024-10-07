// Inherit ItemType to make a new item type.
function CustomItem_Dice() : ItemType() constructor{
	// You can override several functions to customize your item.
	
	// GetName() returns the name of the item.
	function GetName(){
		return choose("Dice","Dice?","Dice!");
	}
		
	// OnUse(inventory, index) is called when the player uses the item.
	function OnUse(inventory,index){
		// We want a dice that rolls 1~6.
		var number=irandom_range(1,6);
		Dialog_Add($"* You rowed the dice.&* It's a {number}!");
			
		// The player gets a new dice item if it's a 1.
		// If it's a 6, this dice item disappears.
		if(number==1){
			if(inventory.Add(ITEM_DICE)){
				Dialog_Add("* You got another dice!&* Check your inventory.");
			}else{
				Dialog_Add("* A new dice wanted to jump into&  your inventory, but your inventory&  is too full!");
			}
		}else if(number==6){
			Dialog_Add($"* This dice disappeared without&  a trace!");
			inventory.Remove(index);
		}
			
		Dialog_Start();
	}
	
	// OnInfo(inventory, index) is called when player selects the info button.
	function OnInfo(inventory,index){
		Dialog_Add("* This is a 6-sided dice.&* You can roll it and something&  might happen.");
		Dialog_Start();
	}
	
	// OnDrop(inventory, index) is called when player selects the drop button.
	// The default implementation already handles dialogs and the removal of the item.
	// There's no need to override OnDrop function.
	
	// After done coding your item type, go back to Item_Custom and register your item type.
}