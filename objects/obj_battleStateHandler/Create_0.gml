battleStartTime = set_time(5);
battleStartTimer = 0;
global.PlayTime = 0;

enum BattleState
{
	Inactive,
	Start,
	Active,
	End
}

global.BattleState = BattleState.Inactive;