/// @description AddidtionalMechanicsSequence

//Inherit the parent event
event_inherited();

switch (currentState)
{
	case PlayerState.Spawn:
		ExecutePlayerSpawn;
	break;
	
	case PlayerState.Idle:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
	break;
	
	case PlayerState.Run:
		RespondToControls;
		MovePlayer;
		ChangeSprite;
		RotateWeapon;
		ShootWeapon;
		PullPickups;
	break;
	
	case PlayerState.Jump:
	break;
	
	case PlayerState.Dash:
	break;
	
	case PlayerState.Transcendence:
		ExecutePlayerDeath;
	break;
	
	case PlayerState.Death:
		global.BattleState = BattleState.End;
	break;
}

CheckCollision(obj_obstacle);
CheckCollision(obj_well);

//// This is a part of dash effect test, delete this in the future.
//if (velocityCurrent > 0)
//{
//	var _dashEffect = instance_create_layer(x, y + + lengthdir_x(1, 90), layer, vfx_dash);
//	_dashEffect.sprite_index = sprite_index;
//	_dashEffect.image_index = image_index;
//	_dashEffect.drawScaleX = drawScaleX;
//	_dashEffect.drawScaleY = drawScaleY;
//	_dashEffect.drawAngle = drawAngle;
//}