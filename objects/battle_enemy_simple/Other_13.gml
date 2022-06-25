///@desc Menu Switch

switch(Battle_GetMenu()){
	case BATTLE_MENU.FIGHT_TARGET:
		//Create enemy's hp bar
		var inst=instance_create_depth(0,0,0,battle_menu_fight_hp_bar);
		inst.enemy_slot=_enemy_slot;
		inst.hp_max=_hp_max;
		inst.hp=_hp;
		break;
		
	case BATTLE_MENU.FIGHT_DAMAGE:
		var dmg=Battle_GetMenuFightDamage();
		var hp_orig=_hp;
		
		_hp=(_hp-dmg >= 0 ? _hp-dmg : 0);
		
		//Create damage number
		var inst=instance_create_depth(x,y-150,0,battle_damage);
		inst.damage=dmg;
		inst.bar_hp_max=_hp_max;
		inst.bar_hp_original=hp_orig;
		inst.bar_hp_target=_hp;
		
		//Play damage sound and shake
		if(dmg>0){
			audio_play_sound(snd_damage,0,false);
			var shake=instance_create_depth(0,0,0,shaker);
			shake.target=self;
			shake.var_name="x";
			shake.shake_distance=15;
			shake.shake_decrease=3;
			shake.shake_speed=4;
		}
		break;
}
