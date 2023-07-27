/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35936B82
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "enemy_projectile"
function enemy_projectile() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 137F55E0
	/// @DnDParent : 35936B82
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
	var l137F55E0_0 = collision_rectangle(x + -300, y + -300, x + 300, y + 300, o_player, true, 1);
	if((l137F55E0_0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 46C61B7E
		/// @DnDParent : 137F55E0
		/// @DnDArgument : "speed" "zombie_spd"
		speed = zombie_spd;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 239F6E72
		/// @DnDParent : 137F55E0
		/// @DnDArgument : "x" "o_player.x"
		/// @DnDArgument : "y" "o_player.y"
		direction = point_direction(x, y, o_player.x, o_player.y);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42DDB52F
		/// @DnDParent : 137F55E0
		/// @DnDArgument : "var" "alarm[0]"
		/// @DnDArgument : "op" "1"
		if(alarm[0] < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4D5D2CB5
			/// @DnDParent : 42DDB52F
			/// @DnDArgument : "steps" "1"
			alarm_set(0, 1);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3E24FA3C
	/// @DnDParent : 35936B82
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3B4E2B4A
		/// @DnDParent : 3E24FA3C
		/// @DnDArgument : "steps" "-1"
		alarm_set(0, -1);
	}
}