function Encounter_Start(encounter,anim=true,exclam=true) {
	if(Encounter_IsExists(encounter)){
		if(!instance_exists(char_player)){
			anim=false;
		}
		if(!anim){
			if(Encounter_IsPauseBGM(encounter)){
				BGM_Pause(0);
			}
			Storage_GetTempGeneral().Set(FLAG_TEMP_ENCOUNTER,encounter);
			if(!Player_IsInBattle()){
				Storage_GetTempGeneral().Set(FLAG_TEMP_BATTLE_ROOM_RETURN,room);
				room_persistent=true;
			}
			room_goto(room_battle);
		}else{
			var inst=instance_create_depth(0,0,0,encounter_anim);
			inst._encounter=encounter;
			inst._exclam=exclam;
			inst._quick=Encounter_IsQuick(encounter);
			inst._soul_x=Encounter_GetSoulX(encounter);
			inst._soul_y=Encounter_GetSoulY(encounter);
		}
		return true;
	}else{
		show_debug_message($"Encounter ID {encounter} doesn't exists!");
		return false;
	}


}
