///@arg menu
///@arg call_event*
function Battle_SetMenu() {
	var MENU=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	battle._menu=MENU;
	Battle_SetDialog("",false,false);
	Battle_SetDialog("",false,true);
	
	////////////////////////////////////////
	//按钮
	if(MENU==BATTLE_MENU.BUTTON){
		Battle_SetDialog(Battle_GetMenuDialog());
	}
	
	////////////////////////////////////////
	//战斗/行动目标
	if(MENU==BATTLE_MENU.FIGHT_TARGET || MENU==BATTLE_MENU.ACT_TARGET){
		//越界归零
		if(Battle_GetMenuChoiceEnemy()>=Battle_GetEnemyNumber()){
			Battle_SetMenuChoiceEnemy(0,false);
		}
		
		var text="";
		var proc=0;
		//创建敌人列表文字
		repeat(3){
			var inst=Battle_GetEnemy(proc);
			if(instance_exists(inst)){
				if(Battle_IsEnemySpareable(proc)){
					text+="{color `yellow`}"
				}
				text+=Battle_GetEnemyName(proc)+"{color `white`}&";
			}
			proc+=1;
		}
		Battle_SetDialog(text,true);
	}

	if(MENU==BATTLE_MENU.FIGHT_AIM){
		Battle_SetMenuFightAnimTime(0);
		Battle_SetMenuFightDamageTime(0);
		
		var obj=Player_GetBattleFightMenuObj();
		var defaultObj=battle_menu_fight_knife;
		if(!object_exists(obj)){
			show_debug_message($"Invalid BattleMenuFightObj! Falling back to {object_get_name(defaultObj)}");
			obj=defaultObj;
		}
		if(GetObjectBase(obj)==battle_menu_fight){
			instance_create_depth(0,0,0,obj);
		}
	}
	////////////////////////////////////////
	//行动内容
	if(MENU==BATTLE_MENU.ACT_ACTION){
		var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
		var num=Battle_GetEnemyActionNumber(ENEMY);
	
		//越界归零
		if(Battle_GetMenuChoiceAction()>=num){
			Battle_SetMenuChoiceAction(0,false);
		}
	
		var proc=0;
		var text="";
		var text2="";
		var target=0;
		//创建行动列表文字
		repeat(Battle_GetEnemyActionNumber(ENEMY)){
			if(!target){
				text+=Battle_GetEnemyActionName(ENEMY,proc)+"&";
				target=!target;
			}else{
				text2+=Battle_GetEnemyActionName(ENEMY,proc)+"&";
				target=!target;
			}
			proc+=1;
		}
	
		Battle_SetDialog(text,true);
		Battle_SetDialog(text2,true,true);
	}

	//物品
	if(MENU==BATTLE_MENU.ITEM){
		Battle_SetMenuChoiceItem(0,false);
		instance_create_depth(0,0,0,battle_menu_item_scrollbar);
	}

	//仁慈
	if(MENU==BATTLE_MENU.MERCY){
		var text="";
		if(!Battle_IsMenuChoiceMercyOverride()){
			//越界归零
			if(Battle_GetMenuChoiceMercy()>Battle_IsMenuMercyFleeEnabled()){
				Battle_SetMenuChoiceMercy(0,false);
			}
		
			var proc=0;
			//仁慈菜单文字
			repeat(3){
				if(Battle_IsEnemySpareable(proc)){
					text+="{color `yellow`}";
					break;
				}
				proc+=1;
			}
			text+=Lang_GetString("battle.menu.mercy.spare");
		
			//逃跑是否可用
			if(Battle_IsMenuMercyFleeEnabled()){
				text+="&{color `white`}";
				text+=Lang_GetString("battle.menu.mercy.flee");
			}
		}else{
			if(Battle_GetMenuChoiceMercy()>=Battle_GetMenuChoiceMercyOverrideNumber()){
				Battle_SetMenuChoiceMercy(0,false);
			}
		
			var proc=0;
			repeat(Battle_GetMenuChoiceMercyOverrideNumber()){
				text+=Battle_GetMenuChoiceMercyOverrideName(proc);
				text+="&";
				proc+=1;
			}
		}
		Battle_SetDialog(text,true);
	}
	
	////////////////////////////////////////
	if(CALL){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_SWITCH);
	}

	if(MENU==BATTLE_MENU.FIGHT_ANIM){
		if(instance_exists(battle_menu_fight)){
			with(battle_menu_fight){
				event_user(BATTLE_MENU_FIGHT_EVENT.ANIM);
			}
		}
	}

	if(MENU==BATTLE_MENU.FIGHT_DAMAGE){
		if(instance_exists(battle_menu_fight)){
			with(battle_menu_fight){
				event_user(BATTLE_MENU_FIGHT_EVENT.DAMAGE);
			}
		}
	}

	return true;


}
