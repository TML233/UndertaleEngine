// Phone calls are also items.
// When the player selects a phone item, OnUse is called.
function CustomItem_PhoneToriel() : ItemType() constructor{
	function GetName(){
		return "Toriel";
	}
	
	function OnUse(inventory,index){
		audio_play_sound(snd_phone_call,0,false);
		Dialog_Add("* Dialing...");
		
		// You can check what room it currently is, and display different dialogs.
		Dialog_Add("* ...{pause}{clear}* Nobody picked up.");
		
		Dialog_Start();
	}
}