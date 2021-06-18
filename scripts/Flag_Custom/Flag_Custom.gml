Player_SetName("CHARA");
Player_SetLv(1);
Player_SetHpMax(20);
Player_SetHp(20);
Player_SetAtk(10);
Player_SetDef(10);
Player_SetSpd(2);
Player_SetInv(40);
Player_SetPlot(0);
for(var i=0; i<global.plot_max; i++){
	Player_SetKillsMax(i,global.max_kills[i]);
}
Player_SetBattleMenuFight(battle_menu_fight_knife);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.GENOCIDE,false);

Item_SetWeapon(item_stick);
Item_SetArmor(item_bandage);