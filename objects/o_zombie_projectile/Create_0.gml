/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7BE352A5
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2DA6B69A
/// @DnDArgument : "obj" "o_player"
/// @DnDSaveInfo : "obj" "o_player"
var l2DA6B69A_0 = false;
l2DA6B69A_0 = instance_exists(o_player);
if(l2DA6B69A_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 59496E8D
	/// @DnDParent : 2DA6B69A
	/// @DnDArgument : "x" "o_player.x"
	/// @DnDArgument : "y" "o_player.y"
	direction = point_direction(x, y, o_player.x, o_player.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 1B94B182
	/// @DnDParent : 2DA6B69A
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}