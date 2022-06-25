/// @description Add kill count + Gold + EXP
if _hp =0
{
	Player_SetKills(Player_GetKills()+1);
	Battle_RewardExp(+1);
	Battle_RewardGold(+1);
	}
