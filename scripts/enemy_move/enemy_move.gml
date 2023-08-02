/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3751B65A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_move"
function enemy_move() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 732798A7
	/// @DnDParent : 3751B65A
	/// @DnDArgument : "x1" "-300"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-300"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "300"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "300"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_player"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_player"
	var l732798A7_0 = collision_rectangle(x + -300, y + -300, x + 300, y + 300, o_player, true, 1);
	if((l732798A7_0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4516E310
		/// @DnDParent : 732798A7
		/// @DnDArgument : "speed" "zombie_spd"
		speed = zombie_spd;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 218A085C
		/// @DnDParent : 732798A7
		/// @DnDArgument : "x" "o_player.x"
		/// @DnDArgument : "y" "o_player.y"
		direction = point_direction(x, y, o_player.x, o_player.y);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 37A7C66D
	/// @DnDParent : 3751B65A
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 51B13995
		/// @DnDParent : 37A7C66D
		/// @DnDArgument : "speed" "zombie_spd"
		speed = zombie_spd;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 5370B8CF
		/// @DnDParent : 37A7C66D
		/// @DnDArgument : "direction" "2"
		/// @DnDArgument : "direction_relative" "1"
		direction += 2;
	}
}