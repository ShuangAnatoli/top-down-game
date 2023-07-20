/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 0791B350
/// @DnDArgument : "x1" "-800"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-800"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "800"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "800"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "o_player"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "o_player"
var l0791B350_0 = collision_rectangle(x + -800, y + -800, x + 800, y + 800, o_player, true, 1);
if((l0791B350_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2F965FD2
	/// @DnDParent : 0791B350
	/// @DnDArgument : "speed" "zombie_spd"
	speed = zombie_spd;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0769424D
	/// @DnDParent : 0791B350
	/// @DnDArgument : "x" "o_player.x"
	/// @DnDArgument : "y" "o_player.y"
	direction = point_direction(x, y, o_player.x, o_player.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 21B5576A
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 722B620A
	/// @DnDParent : 21B5576A
	speed = 0;
}