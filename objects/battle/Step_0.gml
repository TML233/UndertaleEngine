//菜单
if(_state==BATTLE_STATE.MENU){
	//按钮
	if(_menu==BATTLE_MENU.BUTTON){
		//左/右
		if(Input_IsPressed(INPUT.LEFT)){
			var button=_menu_choice_button;
			button-=1;
			if(button<0){
				button=3;
			}
			audio_play_sound(snd_menu_switch,0,false);
			Battle_SetMenuChoiceButton(button);
		}else if(Input_IsPressed(INPUT.RIGHT)){
			var button=_menu_choice_button;
			button+=1;
			if(button>3){
				button=0;
			}
			audio_play_sound(snd_menu_switch,0,false);
			Battle_SetMenuChoiceButton(button);
		}
		
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			switch(_menu_choice_button){
				case 0:
					Battle_SetMenu(BATTLE_MENU.FIGHT_TARGET);
					break;
				case 1:
					Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
					break;
				case 2:
					if(Item_GetNumber()>0){
						Battle_SetMenu(BATTLE_MENU.ITEM);
					}else{
						audio_stop_sound(snd_menu_confirm);
					}
					break;
				case 3:
					Battle_SetMenu(BATTLE_MENU.MERCY);
					break;
			}
		}
	}else
	
	//战斗目标
	if(_menu==BATTLE_MENU.FIGHT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;
		
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.FIGHT_AIM);
		}
	}else
	
	//战斗动画
	if(_menu==BATTLE_MENU.FIGHT_ANIM){
		if(_menu_fight_anim_time>0){
			_menu_fight_anim_time-=1;
		}else if(_menu_fight_anim_time==0){
			Battle_EndMenuFightAnim();
		}
	}else
	
	//战斗伤害
	if(_menu==BATTLE_MENU.FIGHT_DAMAGE){
		if(_menu_fight_damage_time>0){
			_menu_fight_damage_time-=1;
		}else if(_menu_fight_damage_time==0){
			Battle_EndMenuFightDamage();
		}
	}else
	
	//行动目标
	if(_menu==BATTLE_MENU.ACT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;
		
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.ACT_ACTION);
		}
	}else
	
	//行动内容
	if(_menu==BATTLE_MENU.ACT_ACTION){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var action=_menu_choice_action-2;
			if(action>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var action=_menu_choice_action+2;
			if(action<_enemy_action_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}
		//左/右
		if(Input_IsPressed(INPUT.LEFT)){
			if(_menu_choice_action%2==1){
				var action=_menu_choice_action-1;
				if(action>=0){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceAction(action);
				}
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_menu_choice_action%2==0){
				var action=_menu_choice_action+1;
				if(action<_enemy_action_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceAction(action);
				}
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40+256*(_menu_choice_action%2);
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*floor(_menu_choice_action/2);
		
		//返回/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}else
	
	//物品
	if(_menu==BATTLE_MENU.ITEM){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var slot=Battle_GetMenuChoiceItem()-1;
			if(slot>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var slot=Battle_GetMenuChoiceItem()+1;
			if(slot<Item_GetNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
		
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*(Battle_GetMenuChoiceItem()-_menu_choice_item_first);
	}else
	
	//仁慈
	if(_menu==BATTLE_MENU.MERCY){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var mercy=Battle_GetMenuChoiceMercy()-1;
			if(mercy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var mercy=Battle_GetMenuChoiceMercy()+1;
			if((!Battle_IsMenuChoiceMercyOverride()&&mercy<=_menu_mercy_flee_enabled) || (Battle_IsMenuChoiceMercyOverride()&&mercy<Battle_GetMenuChoiceMercyOverrideNumber())){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy;
		
		//取消/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}
}

//对话
if(_state==BATTLE_STATE.DIALOG){
	if(!instance_exists(_dialog[0])){
		if(!Dialog_IsEmpty()){
			Battle_SetDialog(Dialog_Get()+"{pause}{end}");
		}else{
			if(Battle_IsDialogAutoEnd()){
				Battle_EndDialog();
			}
		}
	}
}

//回合准备
if(_state==BATTLE_STATE.TURN_PREPARATION){
	if(Battle_IsTurnPreparationAutoEnd()){
		if(!instance_exists(battle_dialog_enemy) && !Battle_IsBoardTransforming()){
			Battle_EndTurnPreparation();
		}
	}
}

//回合内
if(_state==BATTLE_STATE.IN_TURN){
	if(_turn_time>0){
		_turn_time-=1;
	}else if(_turn_time==0){
		Battle_EndTurn();
	}
}

//面板重置
if(_state==BATTLE_STATE.BOARD_RESETTING){
	if(!Battle_IsBoardTransforming()){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BOARD_RESETTING_END);
		Battle_GotoNextState();
	}
}

if(_state==BATTLE_STATE.RESULT){
	if(!instance_exists(_dialog[0])){
		Battle_End();
	}
}

//检查战斗结束
if(_state!=BATTLE_STATE.RESULT && Battle_GetEnemyNumber()==0){
	Battle_SetState(BATTLE_STATE.RESULT);
	Battle_SetNextState(BATTLE_STATE.RESULT);
	BGM_Stop(5);
	var text="{define `EXP` "+string(Battle_GetRewardExp())+"}{define `GOLD` "+string(Battle_GetRewardGold())+"}";
	text+=Lang_GetString("battle.result.won");
	Player_SetExp(Player_GetExp()+Battle_GetRewardExp());
	Player_SetGold(Player_GetGold()+Battle_GetRewardGold());
	if(Player_UpdateLv()){
		text+="&"+Lang_GetString("battle.result.lv_up");
		audio_play_sound(snd_level_up,0,false);
	}
	text+="{pause}{end}";
	Battle_SetDialog(text);
}