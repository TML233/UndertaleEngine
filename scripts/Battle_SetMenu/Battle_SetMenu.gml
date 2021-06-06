///@arg menu
///@arg call_event_safe*
///@arg call_event_allenemies*
var MENU=argument[0];
var CALL_SAFE=true;
var CALL_ALL=false;
if(argument_count>=2){
	CALL_SAFE=argument[1];
}
if(argument_count>=3){
	CALL_ALL=argument[2];
}

battle._menu=MENU;
Battle_SetDialog("",false,false);
Battle_SetDialog("",false,true);

////////////////////////////////////////
//战斗/行动目标
if(MENU==BATTLE_MENU.FIGHT_TARGET || MENU==BATTLE_MENU.ACT_TARGET){
	//越界归零
	if(_enemy[0]!=noone)
		battle._menu_choice_enemy=0;
	else if(_enemy[1]!=noone)&&(_enemy[0]==noone)
		battle._menu_choice_enemy=1;
	else if(_enemy[2]!=noone)&&(_enemy[1]==noone)&&(_enemy[0]==noone)
		battle._menu_choice_enemy=2;
	
	var text="";
	var proc=0;
	//创建敌人列表文字
	repeat(3){
		var inst=Battle_GetEnemy(proc);
		if(instance_exists(inst)){
			if(Battle_IsEnemySpareable(proc)){
				text+="{color_text `yellow`}"
			}
		}
		text+=Battle_GetEnemyName(proc)+"{color_text `white`}&";
		proc+=1;
	}
	Battle_SetDialog(text,true);
}

if(MENU==BATTLE_MENU.FIGHT_AIM){
	Battle_SetMenuFightAnimTime(0);
	Battle_SetMenuFightDamageTime(0);
	
	var OBJ=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT);
	if(object_exists(OBJ)){
		if(OBJ==battle_menu_fight||Object_GetBaseParent(OBJ)==battle_menu_fight){
			instance_create_depth(0,0,0,OBJ);
		}
	}
}
////////////////////////////////////////
//行动内容
if(MENU==BATTLE_MENU.ACT_ACTION){
	var ENEMY=Battle_GetMenuChoiceEnemy();
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
				text+="{color_text `yellow`}";
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
if(CALL_SAFE){
	Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_SWITCH, Battle_GetMenuChoiceEnemy());
}
if(CALL_ALL){
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